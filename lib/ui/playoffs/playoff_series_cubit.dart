import 'package:flutternba/domain/games/playoffs/get_playoff_series.dart';
import 'package:flutternba/domain/games/playoffs/playoff_series_model.dart';
import 'package:flutternba/ui/core/cubit/base_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playoff_series_cubit.freezed.dart';
part 'playoff_series_state.dart';

class PlayoffSeriesCubit extends BaseCubit<PlayoffSeriesState> {
  final String _seriesId;
  final GetPlayoffSeriesUseCase _getPlayoffSeriesUseCase;

  PlayoffSeriesCubit(this._seriesId, this._getPlayoffSeriesUseCase)
      : super(const PlayoffSeriesState.loading());

  @override
  Stream<PlayoffSeriesState> buildStateStream() {
    return _getPlayoffSeriesUseCase(_seriesId).map(
      (loadResult) => loadResult.fold(
        onSuccess: (series) => PlayoffSeriesState.display(series),
        onFailure: (_) => const PlayoffSeriesState.error(),
      ),
    );
  }
}
