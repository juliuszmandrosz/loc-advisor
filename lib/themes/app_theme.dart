import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    final base = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
    );

    return base.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.teal.shade100,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.teal.shade100,
            width: 0,
          ),
        ),
        centerTitle: true,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: base.colorScheme.surface,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: base.colorScheme.primary,
        foregroundColor: base.colorScheme.onPrimary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: base.colorScheme.primary,
          foregroundColor: base.colorScheme.onPrimary,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      textTheme: base.textTheme.copyWith(
        displayLarge: base.textTheme.displayLarge!.copyWith(
          color: base.colorScheme.primary,
        ),
        displayMedium: base.textTheme.displayMedium!.copyWith(
          color: base.colorScheme.primary,
        ),
        bodyLarge: base.textTheme.bodyLarge!.copyWith(
          color: base.colorScheme.onSurface,
        ),
        bodyMedium: base.textTheme.bodyMedium!.copyWith(
          color: base.colorScheme.onSurface.withOpacity(0.8),
        ),
      ),
      cardTheme: CardTheme(
        color: base.colorScheme.surface,
        shadowColor: base.colorScheme.shadow,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      chipTheme: base.chipTheme.copyWith(
        backgroundColor: base.colorScheme.secondaryContainer,
        selectedColor: base.colorScheme.primary,
        labelStyle: TextStyle(color: base.colorScheme.onSecondaryContainer),
        secondaryLabelStyle: TextStyle(color: base.colorScheme.onPrimary),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        showCheckmark: false,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: base.colorScheme.secondaryContainer,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
          color: base.colorScheme.onSecondaryContainer.withOpacity(0.6),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: base.colorScheme.surface,
        textStyle: TextStyle(color: base.colorScheme.onSurface),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: base.colorScheme.inverseSurface,
        contentTextStyle: TextStyle(
          color: base.colorScheme.onInverseSurface,
        ),
        behavior: SnackBarBehavior.floating,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: base.colorScheme.primary,
        unselectedLabelColor: Colors.grey,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: base.colorScheme.primary, width: 2),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: base.colorScheme.outline,
        thickness: 1,
      ),
      iconTheme: IconThemeData(
        color: base.colorScheme.primary,
      ),
    );
  }
}
