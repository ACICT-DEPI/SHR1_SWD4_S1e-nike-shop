
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';

class ImageWithFavIcon extends StatelessWidget {
  const ImageWithFavIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://picsum.photos/200/300',
          width:
              widgetWidth(context: context, width: 125),
          height: widgetHeight(
              context: context, height: 81),
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 0,
          left: -2,
          child: CircleAvatar(
            backgroundColor: kPrimaryBackgroundColor,
            radius: widgetWidth(
                context: context, width: 15),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  size: widgetWidth(
                      context: context, width: 15),
                ),
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
