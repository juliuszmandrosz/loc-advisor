import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/recommendations/application/recommendation_tab.dart';

part 'recommendations_cubit.freezed.dart';
part 'recommendations_state.dart';

@injectable
class RecommendationsCubit extends Cubit<RecommendationsState> {
  RecommendationsCubit() : super(RecommendationsState.initial());

  void changeTab(RecommendationTab tab) {
    emit(state.copyWith(selectedTab: tab));
  }

  void applyDestination(String destination) {
    emit(state.copyWith(destination: destination));
  }
}
