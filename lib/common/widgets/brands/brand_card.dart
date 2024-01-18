import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:w_store/common/widgets/images/circular_image.dart';
import 'package:w_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/enums.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WBrandCard extends StatelessWidget {
  const WBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: WRoundedContainer(
        padding: EdgeInsets.all(WSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: WCircularImage(
                image: WImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? WColors.white : WColors.black,
              ),
            ),
            SizedBox(width: WSizes.spaceBtwItems / 2,),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}