import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:w_store/common/widgets/images/rounded_image.dart';
import 'package:w_store/features/shop/controllers/home_controller.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WPromoSlider extends StatelessWidget {
  final List<String> banners;

  const WPromoSlider({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: banners.map((url) => WRoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: WSizes.spaceBtwItems,),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int  i = 0; i < banners.length; i++)
                WCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? WColors.primary : WColors.grey,),
            ],
          ),
        ),
      ],
    );
  }
}