import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  const WVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = WColors.white,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: WSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(WSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? ( dark ? WColors.black : WColors.white),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? WColors.light : WColors.dark,
                ),
              ),
            ),

            /// Text
            const SizedBox(height: WSizes.spaceBtwItems / 2,),
            SizedBox(
                width: 70,
                child: Text(
                  "Shoes Category",
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
            )
          ],
        ),
      ),
    );
  }
}