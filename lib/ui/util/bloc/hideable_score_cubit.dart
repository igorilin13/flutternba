import 'package:rxdart/rxdart.dart';

mixin HideableScoreCubit {
  final BehaviorSubject<bool> shouldOverrideHideScores =
      BehaviorSubject.seeded(false);

  Stream<bool> shouldHideScores(Stream<bool> hideScoresSettingStream) {
    return CombineLatestStream.combine2(
      hideScoresSettingStream,
      shouldOverrideHideScores,
      (setting, override) => setting && !override,
    );
  }

  void overrideHideScores() {
    shouldOverrideHideScores.value = true;
  }
}
