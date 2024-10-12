
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/card_details.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/expanded_icon.dart';
import 'package:flutter/material.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: widgetWidth(context: context, width: 40),
          height:
              widgetHeight(context: context, height: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                widgetWidth(context: context, width: 8)),
            color: kPrimaryBackgroundColor,
          ),
          child: Image.asset(
            'assets/images/checkout/mastercard.png',
          ),
        ),
        SizedBox(
            width:
                widgetWidth(context: context, width: 12)),
        const CardDetails(),
        const Spacer(),
        const ExpandedIcon(),
      ],
    );
  }
}
