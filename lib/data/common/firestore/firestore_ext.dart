import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';

extension FirestoreQueryExtensions on Query<Map<String, dynamic>> {
  Future<Result<List<T>>> getResult<T>(
    T Function(QueryDocumentSnapshot<Map<String, dynamic>> doc) converter, {
    bool throwIfEmpty = true,
  }) {
    return get().then((snapshot) {
      return runCatching(() {
        if (snapshot.docs.isNotEmpty || !throwIfEmpty) {
          return snapshot.docs.mapList(converter);
        } else {
          throw Exception("No documents found");
        }
      });
    }).catchError((e) => Result<List<T>>.failure(e));
  }
}

extension FirestoreDocExtensions on DocumentReference<Map<String, dynamic>> {
  Future<Result<T>> getResult<T>(
    T Function(DocumentSnapshot<Map<String, dynamic>> doc) converter,
  ) {
    return get().then((snapshot) {
      return runCatching(() {
        if (snapshot.exists) {
          return converter(snapshot);
        } else {
          throw Exception("Document not found");
        }
      });
    }).catchError((e) => Result<T>.failure(e));
  }

  Future<Result<T?>> getResultOpt<T>(
    T Function(DocumentSnapshot<Map<String, dynamic>> doc) converter,
  ) {
    return get().then((snapshot) {
      return runCatching(() => snapshot.exists ? converter(snapshot) : null);
    }).catchError((e) => Result<T>.failure(e));
  }
}
