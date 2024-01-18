import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/appbar/appbar.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:w_store/common/widgets/images/circular_image.dart';
import 'package:w_store/common/widgets/layouts/grid_layout.dart';
import 'package:w_store/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:w_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:w_store/common/widgets/texts/section_heading.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/enums.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: WAppBar(
        title: Text('Store', style: TextStyle(fontSize: WSizes.lg)),
        actions: [
          WCartCounterIcon(onPressed: (){},)
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? WColors.black : WColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(WSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    /// Search bar
                    SizedBox(height: WSizes.spaceBtwItems,),
                    WSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                    SizedBox(height: WSizes.spaceBtwSections,),

                    /// Featured Brands
                    WSectionHeading(title: 'Featured Brands', showActionButton: true, onPressed: (){},),
                    SizedBox(height: WSizes.spaceBtwItems / 1.5,),

                    WGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: (){},
                        child: WRoundedContainer(
                          padding: EdgeInsets.all(WSizes.sm),
                          showBorder: true,
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
                    })
                  ],
                ),
              ),

              /// Tabs
            ),
          ];
        },

        /// Body
        body: Container()
      ),
    );
  }
}


