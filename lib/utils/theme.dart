
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
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
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(width: 2, color: Colors.black12)
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(color: Colors.black12)
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(color: Colors.black)
      ),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(color: Colors.red)
      ),
      focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(DAppSizes.radius)),
          borderSide: BorderSide(color: Colors.orange)
      )
  );

  static InputDecorationTheme inputDecorationThemePadded = InputDecorationTheme(
      errorMaxLines: 3,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      prefixIconColor: DColors.gray,
      suffixIconColor: DColors.gray,
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12.0),
      labelStyle:  const TextStyle().copyWith(fontSize: 14, color: Colors.black),
      hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(width: 2, color: Colors.black12)
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(color: Colors.black12)
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(color: Colors.black)
      ),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(DAppSizes.radius),
          borderSide: const BorderSide(color: Colors.red)
      ),
      focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(DAppSizes.radius)),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DAppSizes.radius))
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DAppSizes.radius))
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DAppSizes.radius)),
    )
  );

  static OutlinedButtonThemeData outlinedButtonPrimaryThemeData = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: DColors.primary,
        backgroundColor: Colors.white,
        textStyle: TextStyle(
            fontSize: 14.0,
            // fontWeight: FontWeight.w700
        ),
        side: BorderSide(color: DColors.primary, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DAppSizes.radius)),
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

  static SearchBarThemeData searchBarThemeData = SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(Colors.white),
    hintStyle: WidgetStateProperty.all(
      TextStyle(
        color: DColors.gray
      )
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(DAppSizes.radius))
    ),
    side: WidgetStateProperty.all(
      BorderSide(
        color: DColors.lightGray,
        width: 1.5,
      ),
    ),
    elevation: WidgetStateProperty.all(0)
  );

  static DialogThemeData dialogThemeData = DialogThemeData(
    backgroundColor: Colors.white
  );


}