
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';

class ProductCounter extends StatelessWidget {
  const ProductCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight(context: context, height: 104),
      width: widgetWidth(context: context, width: 58),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 14,
                color: Colors.white,
              ),
            ),
          ),
          const Flexible(
            child: Text(
              '2',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove,
                size: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
