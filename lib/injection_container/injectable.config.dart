// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:cloud_functions/cloud_functions.dart' as _i809;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:loc_advisor/app/accommodations_search/application/accommodations_search_cubit.dart'
    as _i494;
import 'package:loc_advisor/app/accommodations_search/domain/accommodations_search_facade.dart'
    as _i203;
import 'package:loc_advisor/app/accommodations_search/infrastructure/firebase_accommodations_search_facade.dart'
    as _i835;
import 'package:loc_advisor/app/activities_search/application/activities_search_cubit.dart'
    as _i927;
import 'package:loc_advisor/app/activities_search/domain/activities_search_facade.dart'
    as _i279;
import 'package:loc_advisor/app/activities_search/infrastructure/firebase_activities_search_facade.dart'
    as _i403;
import 'package:loc_advisor/app/auth/application/auth_bloc.dart' as _i185;
import 'package:loc_advisor/app/auth/application/forgot_password_cubit.dart'
    as _i86;
import 'package:loc_advisor/app/auth/application/sign_in_cubit.dart' as _i969;
import 'package:loc_advisor/app/auth/application/sign_up_cubit.dart' as _i533;
import 'package:loc_advisor/app/auth/domain/auth_facade.dart' as _i433;
import 'package:loc_advisor/app/auth/infrastructure/firebase_auth_facade.dart'
    as _i792;
import 'package:loc_advisor/app/recommendations/application/accommodation_list_bloc.dart'
    as _i789;
import 'package:loc_advisor/app/recommendations/application/activity_list_bloc.dart'
    as _i938;
import 'package:loc_advisor/app/recommendations/application/recommendations_cubit.dart'
    as _i760;
import 'package:loc_advisor/app/recommendations/domain/recommendations_facade.dart'
    as _i529;
import 'package:loc_advisor/app/recommendations/infrastructure/firebase_recommendations_facade.dart'
    as _i598;
import 'package:loc_advisor/modules/firebase_module.dart' as _i686;
import 'package:loc_advisor/modules/logger_module.dart' as _i656;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    final loggerModule = _$LoggerModule();
    gh.factory<_i760.RecommendationsCubit>(() => _i760.RecommendationsCubit());
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i809.FirebaseFunctions>(
        () => firebaseModule.firebaseFunctions);
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.lazySingleton<_i433.AuthFacade>(() => _i792.FirebaseAuthFacade(
          firebaseAuth: gh<_i59.FirebaseAuth>(),
          logger: gh<_i974.Logger>(),
          firestore: gh<_i974.FirebaseFirestore>(),
        ));
    gh.factory<_i969.SignInCubit>(
        () => _i969.SignInCubit(gh<_i433.AuthFacade>()));
    gh.factory<_i533.SignUpCubit>(
        () => _i533.SignUpCubit(gh<_i433.AuthFacade>()));
    gh.factory<_i86.ForgotPasswordCubit>(
        () => _i86.ForgotPasswordCubit(gh<_i433.AuthFacade>()));
    gh.lazySingleton<_i279.ActivitiesSearchFacade>(
        () => _i403.FirebaseActivitiesSearchFacade());
    gh.factory<_i185.AuthBloc>(
        () => _i185.AuthBloc(authFacade: gh<_i433.AuthFacade>()));
    gh.lazySingleton<_i203.AccommodationsSearchFacade>(
        () => _i835.FirebaseAccommodationsSearchFacade(
              gh<_i809.FirebaseFunctions>(),
              gh<_i974.Logger>(),
            ));
    gh.factory<_i927.ActivitiesSearchCubit>(
        () => _i927.ActivitiesSearchCubit(gh<_i279.ActivitiesSearchFacade>()));
    gh.lazySingleton<_i529.RecommendationsFacade>(
        () => _i598.FirebaseRecommendationsFacade(
              gh<_i974.FirebaseFirestore>(),
              gh<_i59.FirebaseAuth>(),
              gh<_i974.Logger>(),
            ));
    gh.factory<_i494.AccommodationsSearchCubit>(() =>
        _i494.AccommodationsSearchCubit(
            gh<_i203.AccommodationsSearchFacade>()));
    gh.factory<_i789.AccommodationListBloc>(
        () => _i789.AccommodationListBloc(gh<_i529.RecommendationsFacade>()));
    gh.factory<_i938.ActivityListBloc>(
        () => _i938.ActivityListBloc(gh<_i529.RecommendationsFacade>()));
    return this;
  }
}

class _$FirebaseModule extends _i686.FirebaseModule {}

class _$LoggerModule extends _i656.LoggerModule {}
