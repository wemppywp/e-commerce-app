import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WSectionHeading extends StatelessWidget {
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  const WSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if(showActionButton) TextButton(onPressed: (){}, child: Text(buttonTitle, style: TextStyle(color: textColor),))
        ],
      ),
    );
  }
}