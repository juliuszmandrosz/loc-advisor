import 'package:flutter/material.dart';

extension TextStyleExtensions on BuildContext {
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
}

extension ColorSchemeExtensions on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;
  Color get secondary => Theme.of(this).colorScheme.secondary;
  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;
  Color get background => Theme.of(this).colorScheme.surface;
  Color get onBackground => Theme.of(this).colorScheme.onSurface;
  Color get surface => Theme.of(this).colorScheme.surface;
  Color get onSurface => Theme.of(this).colorScheme.onSurface;
}
