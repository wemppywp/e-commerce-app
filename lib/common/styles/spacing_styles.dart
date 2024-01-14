

import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: WSizes.appBarHeight,
    left: WSizes.defaultSpace,
    right: WSizes.defaultSpace,
    bottom: WSizes.defaultSpace
  );
}