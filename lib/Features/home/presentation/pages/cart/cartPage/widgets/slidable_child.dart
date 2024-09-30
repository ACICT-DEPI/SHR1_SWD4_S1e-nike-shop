
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';

class SlidableChild extends StatelessWidget {
  const SlidableChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight(context: context, height: 104),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              widgetWidth(context: context, width: 8)),
          color: kSecondaryBackgroundColor),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(
                widgetWidth(context: context, width: 10)),
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryBackgroundColor,
                borderRadius: BorderRadius.circular(
                    widgetWidth(context: context, width: 6)),
              ),
              child: Image.network(
                'https://picsum.photos/200/300',
                width: widgetWidth(context: context, width: 87),
                height: widgetHeight(context: context, height: 85),
              ),
            ),
          ),
          SizedBox(
            width: widgetWidth(context: context, width: 20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Hoodie',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: "Raleway"),
              ),
              SizedBox(
                height: widgetHeight(context: context, height: 4),
              ),
              const Text(
                '\$200.50',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
