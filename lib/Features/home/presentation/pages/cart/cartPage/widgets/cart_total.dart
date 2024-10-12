import 'package:dotted_line/dotted_line.dart';
import 'package:e_commerce/Config/routes/app_routes.dart';
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/cartPage/widgets/cost_row.dart';
import 'package:e_commerce/Features/home/presentation/pages/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: widgetWidth(context: context, width: 20),
            vertical: widgetHeight(context: context, height: 20)),
        color: kSecondaryBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CostRow(
              title: 'Subtotal',
              price: 200.50,
            ),
            SizedBox(
              height: widgetHeight(context: context, height: 8),
            ),
            const CostRow(
              title: 'Delivery',
              price: 0.00,
            ),
            SizedBox(
              height: widgetHeight(context: context, height: 16),
            ),
            const DottedLine(
              dashLength: 6.0,
              dashGapLength: 4.0,
              lineThickness: 2.0,
              dashColor: kSecondaryColor,
            ),
            SizedBox(
              height: widgetHeight(context: context, height: 16),
            ),
            const CostRow(
              title: 'Total Cost',
              price: 200.50,
            ),
            SizedBox(
              height: widgetHeight(context: context, height: 16),
            ),
            CustomButton(
                text: 'Checkout',
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutesName.checkout,
                      arguments: null);
                }),
            SizedBox(
              height: widgetHeight(context: context, height: 16),
            ),
          ],
        ));
  }
}
