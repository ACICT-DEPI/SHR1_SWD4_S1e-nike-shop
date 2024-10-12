import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          text.contains('@') ? FontAwesomeIcons.envelope : Icons.phone_outlined,
          color: Colors.black,
          size: 20.sp,
        ),
        SizedBox(
          width: widgetWidth(context: context, width: 12),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: 'Poppins'),
            ),
            Text(
              text.contains('@') ? 'Email' : 'Phone',
              style: const TextStyle(
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: 'Poppins'),
            )
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.pen,
              color: kSecondaryColor, // Adjust the color
              size: 15.sp, // Adjust the size
            ),
            SizedBox(
                height: widgetHeight(
                    context: context,
                    height: 3)), // Space between the icon and underline
            Container(
              width: 17.sp, // Adjust the width of the underline
              height: 2, // Thickness of the underline
              color: kSecondaryColor, // Color of the underline
            ),
          ],
        ),
      ],
    );
  }
}
