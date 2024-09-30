import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/cartPage/widgets/cart_products.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/cartPage/widgets/cart_total.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/contact_row.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/describtion_text.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/expanded_icon.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/map_container.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/payment_row.dart';
import 'package:e_commerce/Features/home/presentation/pages/cart/checkoutPage/widgets/title_text.dart';
import 'package:e_commerce/Features/home/presentation/pages/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(
              title: 'My Cart',
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widgetWidth(context: context, width: 20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: widgetHeight(context: context, height: 20)),
                    padding: EdgeInsets.symmetric(
                      horizontal: widgetWidth(context: context, width: 20),
                      vertical: widgetHeight(context: context, height: 16),
                    ),
                    width: widgetWidth(context: context, width: 347),
                    height: widgetHeight(context: context, height: 425),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          widgetWidth(context: context, width: 16)),
                      color: kSecondaryBackgroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const TitleText(
                          text: 'Contact Information',
                        ),
                        SizedBox(
                          height: widgetHeight(context: context, height: 12),
                        ),
                        const ContactRow(
                          text: 'emmanueloyiboke@gmail.com',
                        ),
                        SizedBox(
                          height: widgetHeight(context: context, height: 12),
                        ),
                        const ContactRow(text: '+234 806 123 4567'),
                        SizedBox(
                          height: widgetHeight(context: context, height: 12),
                        ),
                        const TitleText(
                          text: 'Address',
                        ),
                        SizedBox(
                          height: widgetHeight(context: context, height: 12),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DescribtionText(
                              text: '1082 Airport Road, Nigeria',
                            ),
                            ExpandedIcon()
                          ],
                        ),
                        SizedBox(
                          height: widgetHeight(context: context, height: 16),
                        ),
                        const MapContainer(),
                        SizedBox(
                          height: widgetHeight(context: context, height: 12),
                        ),
                        const TitleText(
                          text: 'Payment Method',
                        ),
                        SizedBox(
                          height: widgetHeight(context: context, height: 12),
                        ),
                        const PaymentRow()
                      ],
                    ),
                  ),
                  const CartProducts(),
                ],
              ),
            )),
            const CartTotal(),
          ],
        ),
      ),
    );
  }
}
