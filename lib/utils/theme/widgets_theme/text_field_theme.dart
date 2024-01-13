import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WTextFormFieldTheme {
  WTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: WColors.darkGrey,
    suffixIconColor: WColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: WSizes.fontSizeMd, color: WColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: WSizes.fontSizeSm, color: WColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: WColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: WColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: WColors.darkGrey,
    suffixIconColor: WColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: WSizes.fontSizeMd, color: WColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: WSizes.fontSizeSm, color: WColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: WColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: WColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(WSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: WColors.warning),
    ),
  );
}
