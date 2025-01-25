part of 'recommendations_cubit.dart';

@freezed
class RecommendationsState with _$RecommendationsState {
  const factory RecommendationsState({
    required RecommendationTab selectedTab,
    required String destination,
  }) = _RecommendationsState;

  factory RecommendationsState.initial() => RecommendationsState(
        selectedTab: RecommendationTab.activities,
        destination: '',
      );
}
