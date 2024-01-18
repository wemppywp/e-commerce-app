import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/brands/brand_show_case.dart';
import 'package:w_store/common/widgets/layouts/grid_layout.dart';
import 'package:w_store/common/widgets/products/product_card_vertical.dart';
import 'package:w_store/common/widgets/texts/section_heading.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              WBrandShowcase(images: [
                WImages.productImage3,
                WImages.productImage2,
                WImages.productImage1,
              ],),
              WBrandShowcase(images: [
                WImages.productImage3,
                WImages.productImage2,
                WImages.productImage1,
              ],),

              /// Products
              WSectionHeading(title: 'You might like', onPressed: (){},),
              const SizedBox(height: WSizes.spaceBtwItems,),

              WGridLayout(itemCount: 4, itemBuilder: (_, index) => WProductCardVertical())
            ],
          ),
        ),
      ]
    );
  }
}
