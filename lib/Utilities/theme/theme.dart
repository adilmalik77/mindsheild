import 'package:flutter/material.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/text_theme.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/chip_theme.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/appbar_theme.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/bottem_sheet_theme.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/checkbox_theme.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/elevatedbutton_theme.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/outline_button_theme.dart';
import 'package:mindshield/Utilities/theme/widgets_theme/text_field_theme.dart';

/// ---------------- COLORS ----------------
class UColors {
  static const Color dark = Color(0xFF1F2937);
  static const Color light = Color(0xFFFFFFFF);
}

/// ---------------- APP THEME ----------------
class UAppTheme {
  // private constructor
  UAppTheme._();

  // ---------------- LIGHT THEME ----------------
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: UTextTheme.lightTextTheme, // Light Text Theme
    scaffoldBackgroundColor:
        UColors.light, // All Screens Background Color Means Root Ui
    chipTheme: UChipTheme
        .lightChipTheme, // Button , container , image background color
    appBarTheme: UAppbarTheme.lightAppbarTheme, // App Bar Theme
    checkboxTheme: UCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: UBottemSheetTheme.lightBottemSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.lightElevatedButtonTheme,
    // fontFamily: ,
    outlinedButtonTheme: UOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: UTextFormFieldTheme.lightInputDecorationTheme,
    //  Light BackGround Themes
    colorScheme: const ColorScheme.light(
      surface: Colors.white, // Backgroung Color
      onSurface: Colors.black, // Text Theme Color
    ),
  );

  // ---------------- DARK THEME ----------------
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: UTextTheme.darkTextTheme, // Dark Text Theme
    scaffoldBackgroundColor: Colors.black,
    chipTheme: UChipTheme.darkChipTheme,
    appBarTheme: UAppbarTheme.darkAppbarTheme,
    checkboxTheme: UCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: UBottemSheetTheme.darkBottemSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.darkElevatedButtonTheme,
    // fontFamily: ,
    outlinedButtonTheme: UOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: UTextFormFieldTheme.darkInputDecorationTheme,
    //  Dark BackGround Themes
    colorScheme: const ColorScheme.dark(
      surface: Colors.black,
      onSurface: Colors.white,
    ),
  );
}
