import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/device/device_utility.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WTabBar extends StatelessWidget implements PreferredSizeWidget {
  const WTabBar({
    super.key, required this.tabs,
  });
  
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? WColors.black : WColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: WColors.primary,
        unselectedLabelColor: WColors.darkGrey,
        labelColor: dark ? WColors.white : WColors.primary,
        tabs: tabs
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(WDeviceUtils.getAppBarHeight());
}