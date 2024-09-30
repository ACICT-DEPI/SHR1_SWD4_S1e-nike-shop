import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight(context: context, height: 105),
      width: widgetWidth(context: context, width: 335),
      padding: EdgeInsets.all(widgetWidth(context: context, width: 10)),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(widgetWidth(context: context, width: 8)),
        color: kSecondaryBackgroundColor,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  widgetWidth(context: context, width: 6)),
              color: kPrimaryBackgroundColor,
            ),
            child: Image.network(
              'https://picsum.photos/200/300',
              width: widgetWidth(context: context, width: 87),
              height: widgetHeight(context: context, height: 85),
            ),
          ),
          SizedBox(
            width: widgetWidth(context: context, width: 20),
          ),
          Expanded(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'We Have New \nProducts With Offers',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Raleway',
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 8),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$3504.05',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: widgetWidth(context: context, width: 30),
                        ),
                        Text(
                          '\$3504.05',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: kSecondaryColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Text(
                    '2 Days ago',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
