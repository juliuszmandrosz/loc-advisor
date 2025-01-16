import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/activities/domain/activities_facade.dart';

@LazySingleton(as: ActivitiesFacade)
class FirebaseActivitiesFacade implements ActivitiesFacade {}
