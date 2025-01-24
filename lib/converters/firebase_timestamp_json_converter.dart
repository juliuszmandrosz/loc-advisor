import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FirebaseTimestampJsonConverter
    implements JsonConverter<DateTime, dynamic> {
  const FirebaseTimestampJsonConverter();

  @override
  DateTime fromJson(dynamic timestamp) {
    if (timestamp is Timestamp) {
      return timestamp.toDate();
    } else if (timestamp is Map<String, dynamic>) {
      final seconds = timestamp['_seconds'] as int;
      final nanoseconds = timestamp['_nanoseconds'] as int;
      return DateTime.fromMillisecondsSinceEpoch(
        (seconds * 1000) + (nanoseconds ~/ 1000000),
      );
    }
    throw ArgumentError('Invalid timestamp format: $timestamp');
  }

  @override
  Timestamp toJson(DateTime datetime) {
    return Timestamp.fromDate(datetime);
  }
}
