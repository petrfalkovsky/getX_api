import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppConfig {
  ////*------------------Цвета-----------------------------*///
  ///Базовые
  static const whiteColor = Color.fromARGB(255, 255, 255, 255);
  static const blackColor = Color.fromARGB(255, 0, 0, 0);
  static const blueColor = Color.fromRGBO(127, 187, 251, 1);
  static const pinkColor = Color.fromRGBO(255, 139, 173, 1);

  ///Градиент базовый
  static const startPointGradientBase = pinkColor;
  static const endPointGradientBase = blueColor;

  ///Градиент дополнительный
  static const startPointGradientAddon = blueColor;
  static const endPointGradientAddon = Color.fromRGBO(149, 134, 253, 1);

  static const secondary = Color.fromARGB(255, 6, 10, 20);
  static const accent = Color(0xFFD6755B);
  static const textDark = Color.fromARGB(255, 0, 0, 0);
  static const textLigth = Color.fromARGB(255, 255, 255, 255);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const cardLight = Color.fromARGB(255, 96, 100, 116);
  static const cardDark = Color(0xFF303334);
}

abstract class _LightColors {
  static const background = Color.fromARGB(255, 77, 69, 69);
  static const card = AppConfig.cardLight;
}

abstract class _DarkColors {
  static const background = Color(0xFF1B1E1F);
  static const card = AppConfig.cardDark;
}

/// Reference to the application theme.
class AppTheme {
  static const accentColor = AppConfig.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  final darkBase = ThemeData.dark();
  final lightBase = ThemeData.light();

  /// Light theme and its settings.
  ThemeData get light => ThemeData(
        brightness: Brightness.light,
        colorScheme: lightBase.colorScheme.copyWith(secondary: accentColor),
        visualDensity: visualDensity,
        textTheme:
            GoogleFonts.lobsterTextTheme().apply(bodyColor: AppConfig.textDark),
        backgroundColor: _LightColors.background,
        appBarTheme: lightBase.appBarTheme.copyWith(
          iconTheme: lightBase.iconTheme,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: AppConfig.textDark,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        scaffoldBackgroundColor: _LightColors.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: AppConfig.secondary),
        ),
        cardColor: _LightColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppConfig.textDark),
        ),
        iconTheme: const IconThemeData(color: AppConfig.iconDark),
      );

  /// Dark theme and its settings.
  ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        colorScheme: darkBase.colorScheme.copyWith(secondary: accentColor),
        visualDensity: visualDensity,
        textTheme:
            GoogleFonts.robotoTextTheme().apply(bodyColor: AppConfig.textLigth),
        backgroundColor: _DarkColors.background,
        appBarTheme: darkBase.appBarTheme.copyWith(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        scaffoldBackgroundColor: _DarkColors.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: AppConfig.secondary),
        ),
        cardColor: _DarkColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: Color.fromARGB(255, 26, 13, 13)),
        ),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 18, 18, 20)),
      );
}
