import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/pages/cartPage/widgets/cart_products.dart';
import 'package:e_commerce/Features/home/presentation/pages/cartPage/widgets/cart_total.dart';
import 'package:e_commerce/Features/home/presentation/pages/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3 Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: 'Poppins'),
                  ),
                  CartProducts(),
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
