/* -- Light & Dark Outlined Button Themes -- */
import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WOutlinedButtonTheme {
  WOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: WColors.dark,
      side: const BorderSide(color: WColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: WColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: WSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(WSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: WColors.light,
      side: const BorderSide(color: WColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: WColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: WSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(WSizes.buttonRadius)),
    ),
  );
}
