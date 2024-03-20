import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseCubit<State> extends Cubit<State> {
  final CompositeSubscription _compositeSubscription = CompositeSubscription();
  final List<StreamController> _controllers = [];

  BaseCubit(super.initialState);

  @protected
  void disposeOnClose(StreamSubscription subscription) {
    _compositeSubscription.add(subscription);
  }

  @protected
  void disposeControllersOnClose(List<StreamController> controllers) {
    _controllers.addAll(controllers);
  }

  @override
  Future<void> close() {
    _compositeSubscription.clear();
    for (var controller in _controllers) {
      controller.close();
    }
    return super.close();
  }
}

extension DisposeOnClose on StreamSubscription {
  void disposeOnClose(BaseCubit cubit) {
    cubit.disposeOnClose(this);
  }
}
