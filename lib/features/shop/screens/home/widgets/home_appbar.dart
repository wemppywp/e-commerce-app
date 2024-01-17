import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/appbar/appbar.dart';
import 'package:w_store/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class WHomeAppBar extends StatelessWidget {
  const WHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(WTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: WColors.grey)),
          Text(WTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: WColors.white)),
        ],
      ),
      actions: [
        WCartCounterIcon(onPressed: () { }, iconColor: WColors.white,)
      ],
    );
  }
}