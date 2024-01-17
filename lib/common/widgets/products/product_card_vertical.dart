import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/common/styles/shadows.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:w_store/common/widgets/icons/circular_icon.dart';
import 'package:w_store/common/widgets/images/rounded_image.dart';
import 'package:w_store/common/widgets/texts/product_price_text.dart';
import 'package:w_store/common/widgets/texts/product_title_text.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WProductCardVertical extends StatelessWidget {
  const WProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    /// Container with side padding, color, edges, radius adn shadow
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [WShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(WSizes.productImageRadius),
            color: dark ? WColors.darkerGrey : WColors.white
        ),
        child: Column(
          children: [
            /// Thumbnail, wishlist button, discount tag
            WRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(WSizes.sm),
              backgroundColor: dark ? WColors.dark : WColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  WRoundedImage(imageUrl: WImages.productImage1, applyImageRadius: true,),

                  /// Sale Tag
                  Positioned(
                    top: 12,
                    child: WRoundedContainer(
                      radius: WSizes.sm,
                      backgroundColor: WColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(horizontal: WSizes.sm, vertical: WSizes.xs),
                      child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: WColors.black),),
                    ),
                  ),

                  /// Favorite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: WCircularIcon(icon: Iconsax.heart5, color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(height: WSizes.spaceBtwItems / 2,),

            /// details
            Padding(
              padding: EdgeInsets.only(left: WSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WProductTitleText(title: "Green Nike Air Shoes", smallSize: true,),
                  const SizedBox(height: WSizes.spaceBtwItems / 2,),
                  Row(
                    children: [
                      Text("Nike", overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium,),
                      const SizedBox(width: WSizes.xs,),
                      Icon(Iconsax.verify5, color: WColors.primary, size: WSizes.iconXs,)
                    ],
                  ),
                  //Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      WProductPriceText(price: "35.0", isLarge: true,),
                      Container(
                        decoration: BoxDecoration(
                          color: WColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(WSizes.cardRadiusMd),
                            bottomRight: Radius.circular(WSizes.productImageRadius),
                          )
                        ),
                        child: SizedBox(
                          width: WSizes.iconLg * 1.2,
                          height: WSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: WColors.white,))
                        ),
                      )
                    ],
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


