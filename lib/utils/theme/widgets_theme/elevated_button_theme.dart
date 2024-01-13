/* -- Light & Dark Elevated Button Themes -- */
import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WElevatedButtonTheme {
  WElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: WColors.light,
      backgroundColor: WColors.primary,
      disabledForegroundColor: WColors.darkGrey,
      disabledBackgroundColor: WColors.buttonDisabled,
      side: const BorderSide(color: WColors.primary),
      padding: const EdgeInsets.symmetric(vertical: WSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: WColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(WSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: WColors.light,
      backgroundColor: WColors.primary,
      disabledForegroundColor: WColors.darkGrey,
      disabledBackgroundColor: WColors.darkerGrey,
      side: const BorderSide(color: WColors.primary),
      padding: const EdgeInsets.symmetric(vertical: WSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: WColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(WSizes.buttonRadius)),
    ),
  );
}
