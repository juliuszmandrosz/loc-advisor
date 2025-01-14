import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FirebaseTimestampJsonConverter
    implements JsonConverter<DateTime, Timestamp> {
  const FirebaseTimestampJsonConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime datetime) {
    return Timestamp.fromDate(datetime);
  }
}
