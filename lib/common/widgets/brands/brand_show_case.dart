import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/brands/brand_card.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WBrandShowcase extends StatelessWidget {
  const WBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return WRoundedContainer(
      showBorder: true,
      borderColor: WColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: WSizes.spaceBtwItems),
      padding: EdgeInsets.all(WSizes.md),
      child: Column(
        children: [
          /// Brand with Products Count
          WBrandCard(showBorder: false),
          const SizedBox(height: WSizes.spaceBtwItems,),

          /// Brand Top 3 Product Images
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context){
    return Expanded(
      child: WRoundedContainer(
        height: 100,
        backgroundColor: WHelperFunctions.isDarkMode(context) ? WColors.darkerGrey : WColors.light,
        padding: EdgeInsets.all(WSizes.md),
        margin: EdgeInsets.only(right: WSizes.sm),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}