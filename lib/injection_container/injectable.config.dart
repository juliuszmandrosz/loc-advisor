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
import 'package:loc_advisor/generate_recommendations/domain/recommendation_facade.dart'
    as _i877;
import 'package:loc_advisor/generate_recommendations/infrastructure/firebase_recommendation_facade.dart'
    as _i318;
import 'package:loc_advisor/modules/firebase_module.dart' as _i686;

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
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i809.FirebaseFunctions>(
        () => firebaseModule.firebaseFunctions);
    gh.singleton<_i877.RecommendationFacade>(
        () => _i318.FirebaseRecommendationFacade());
    return this;
  }
}

class _$FirebaseModule extends _i686.FirebaseModule {}
