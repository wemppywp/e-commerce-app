import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:w_store/utils/constants/image_strings.dart';

class WHomeCategories extends StatelessWidget {
  const WHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return WVerticalImageText(
            image: WImages.shoeIcon,
            title: 'Shoes Category',
            onTap: (){},
          );
        },
      ),
    );
  }
}