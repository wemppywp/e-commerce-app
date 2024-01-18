import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:w_store/common/widgets/layouts/grid_layout.dart';
import 'package:w_store/common/widgets/products/product_card_vertical.dart';
import 'package:w_store/common/widgets/texts/section_heading.dart';
import 'package:w_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:w_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:w_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            WPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  WHomeAppBar(),
                  SizedBox(height: WSizes.spaceBtwSections,),

                  /// Search Bar
                  WSearchContainer(text: WTexts.searchText, onTap: (){},),
                  SizedBox(height: WSizes.spaceBtwSections,),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: WSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        WSectionHeading(title: WTexts.popularCategories, showActionButton: false, textColor: WColors.white,),
                        SizedBox(height: WSizes.spaceBtwItems,),

                        /// Categories
                        WHomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(WSizes.defaultPadding),
              child: Column(
                children: [
                  /// Promo Slider
                  WPromoSlider(banners: [WImages.promoBanner1, WImages.promoBanner2, WImages.promoBanner3],),
                  SizedBox(height: WSizes.spaceBtwSections,),

                  /// Heading
                  WSectionHeading(title: WTexts.popularProducts, textColor: WColors.black, onPressed: (){},),
                  SizedBox(height: WSizes.spaceBtwItems,),

                  /// Popular Product
                  WGridLayout(itemCount: 2, itemBuilder: (_, index) => const WProductCardVertical(),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


















