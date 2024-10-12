
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';

class ItemText extends StatelessWidget {
  const ItemText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'BEST SELLER',
          style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 12),
        ),
        const Text(
          'Nike Jordan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: widgetHeight(
              context: context, height: 12),
        ),
        Row(
          children: [
            const Text(
              '\$200.50',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: widgetWidth(
                  context: context, width: 28),
            ),
            CircleAvatar(
                backgroundColor:
                    kPrimaryBackgroundColor,
                radius: widgetWidth(
                    context: context, width: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: widgetWidth(
                      context: context, width: 7),
                )),
            const Spacer(),
            CircleAvatar(
                backgroundColor:
                    kPrimaryBackgroundColor,
                radius: widgetWidth(
                    context: context, width: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: widgetWidth(
                      context: context, width: 7),
                ))
          ],
        ),
      ],
    );
  }
}
