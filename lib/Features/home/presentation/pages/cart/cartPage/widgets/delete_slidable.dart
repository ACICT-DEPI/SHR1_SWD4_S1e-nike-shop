
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';

class DeleteSlidable extends StatelessWidget {
  const DeleteSlidable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: widgetWidth(context: context, width: 23)),
      width: widgetWidth(context: context, width: 58),
      height: widgetHeight(context: context, height: 104),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(
            widgetWidth(context: context, width: 8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
