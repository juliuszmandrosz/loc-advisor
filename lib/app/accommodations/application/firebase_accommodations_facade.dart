import 'package:injectable/injectable.dart';
import 'package:loc_advisor/app/accommodations/domain/accommodations_facade.dart';

@LazySingleton(as: AccommodationsFacade)
class FirebaseAccommodationsFacade implements AccommodationsFacade {}
