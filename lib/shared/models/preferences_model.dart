import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_model.freezed.dart';

@freezed
class PreferencesModel with _$PreferencesModel {
  const factory PreferencesModel({
    required String label,
    required bool isSelected,
    required IconData icon,
  }) = _PreferencesModel;
}
