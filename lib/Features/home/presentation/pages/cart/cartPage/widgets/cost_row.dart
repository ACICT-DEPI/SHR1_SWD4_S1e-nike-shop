import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';

class CostRow extends StatelessWidget {
  const CostRow({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
              color: title.contains('Cost') ? Colors.black : kSecondaryColor,
              fontSize: widgetWidth(context: context, width: 16),
              fontWeight: FontWeight.w500,
            )),
        Text('\$ $price',
            style: TextStyle(
              color: title.contains('Cost') ? kPrimaryColor : Colors.black,
              fontSize: widgetWidth(context: context, width: 16),
              fontWeight: FontWeight.w500,
            )),
      ],
    );
  }
}
