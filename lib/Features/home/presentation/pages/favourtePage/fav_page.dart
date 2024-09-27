import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/pages/favourtePage/widgets/fav_item.dart';
import 'package:e_commerce/Features/home/presentation/pages/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryBackgroundColor,
        body: SafeArea(
            child: Column(
          children: [
            const CustomAppBar(
              title: 'Favourite',
            ),
            SizedBox(
              height: widgetHeight(context: context, height: 12),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: widgetWidth(context: context, width: 21),
                ),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      crossAxisSpacing:
                          widgetWidth(context: context, width: 21),
                      mainAxisSpacing:
                          widgetHeight(context: context, height: 20),
                    ),
                    itemBuilder: (context, index) {
                      return const FavItem();
                    }),
              ),
            ),
          ],
        )));
  }
}
