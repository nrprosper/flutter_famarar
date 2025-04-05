
import 'package:famarar/utils/colors.dart';
import 'package:flutter/material.dart';

class DThemes {

  DThemes._();

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    prefixIconColor: DColors.gray,
    suffixIconColor: DColors.gray,
    contentPadding: EdgeInsets.symmetric(vertical: 16),
    labelStyle:  const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(width: 2, color: Colors.black12)
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.black12)
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.black)
      ),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.red)
      ),
      focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: Colors.orange)
      )
  );

  static ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      textStyle: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700
      ),
      backgroundColor: DColors.primary,
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))
    )
  );

  static ElevatedButtonThemeData greyElevatedButtonThemeData = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          textStyle: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700
          ),
          backgroundColor: DColors.lightGray,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))
      )
  );

  static OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      textStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w700
      ),
      side: BorderSide(color: DColors.grayBlack, width: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    )
  );

  static NavigationBarThemeData navigationBarThemeData = NavigationBarThemeData(
    indicatorColor: Colors.transparent,
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
        (Set<WidgetState> states) {
          if(states.contains(WidgetState.selected)) {
            return  IconThemeData(
              color: DColors.primary,
              size: 30
            );
          }
          return IconThemeData(
            color: DColors.gray,
            size: 30
          );
        }
    ),
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) {
          if(states.contains(WidgetState.selected)) {
            return TextStyle(
                color: DColors.primary,
            );
          }
          return TextStyle(
              color: DColors.gray,
          );
        }
    )
  );

  static CardThemeData cardThemeData = CardThemeData(
    color: Colors.white
  );


}