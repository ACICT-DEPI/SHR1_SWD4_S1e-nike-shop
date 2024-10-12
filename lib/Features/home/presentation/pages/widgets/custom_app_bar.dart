import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widgetWidth(context: context, width: 21),
          vertical: widgetHeight(context: context, height: 16)),
      child: Row(
        children: [
          CircleAvatar(
              radius: widgetWidth(context: context, width: 22),
              backgroundColor: kSecondaryBackgroundColor,
              child: Center(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: widgetWidth(context: context, width: 18),
                ),
                color: Colors.black,
              ))),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const Spacer(),
          title.contains("Cart")
              ? SizedBox(
                  width: widgetWidth(context: context, width: 44),
                )
              : CircleAvatar(
                  radius: widgetWidth(context: context, width: 22),
                  backgroundColor: kSecondaryBackgroundColor,
                  child: Center(
                      child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      title.contains('Favourite')
                          ? Icons.favorite_border
                          : FontAwesomeIcons.trash,
                    ),
                    color: Colors.black,
                  ))),
        ],
      ),
    );
  }
}
