import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/pages/favourtePage/widgets/image_with_fav_icon.dart';
import 'package:e_commerce/Features/home/presentation/pages/favourtePage/widgets/item_text.dart';
import 'package:flutter/material.dart';

class FavItem extends StatelessWidget {
  const FavItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
          widgetWidth(context: context, width: 14)),
      width: widgetWidth(context: context, width: 159),
      height: widgetHeight(context: context, height: 203),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            widgetWidth(context: context, width: 14)),
        color: kSecondaryBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: widgetHeight(context: context, height: 6),
          ),
          const ImageWithFavIcon(),
          SizedBox(
            height:
                widgetHeight(context: context, height: 16),
          ),
          const ItemText(),
        ],
      ),
    );
  }
}
