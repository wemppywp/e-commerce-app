import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/appbar/appbar.dart';
import 'package:w_store/common/widgets/appbar/tabbar.dart';
import 'package:w_store/common/widgets/brands/brand_card.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:w_store/common/widgets/layouts/grid_layout.dart';
import 'package:w_store/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:w_store/common/widgets/texts/section_heading.dart';
import 'package:w_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                        return WBrandCard(showBorder: true,);
                      })
                    ],
                  ),
                ),
      
                /// Tabs
                bottom: WTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],),
              ),
            ];
          },
      
          /// Body
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          )
        ),
      ),
    );
  }
}











