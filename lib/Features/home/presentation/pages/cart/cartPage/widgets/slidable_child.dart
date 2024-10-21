
import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/generalVariable/general_variable.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidableChild extends StatelessWidget {
   SlidableChild({
    required this.index,
    super.key,
  });
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight(context: context, height: 104),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              widgetWidth(context: context, width: 8)),
          color: kSecondaryBackgroundColor),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(
                widgetWidth(context: context, width: 10)),
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryBackgroundColor,
                borderRadius: BorderRadius.circular(
                    widgetWidth(context: context, width: 6)),
              ),
              child: Image.network(
                GeneralVariable.cartProduct[index].image?.original??"",
                width: widgetWidth(context: context, width: 87),
                height: widgetHeight(context: context, height: 85),
              ),
            ),
          ),
          SizedBox(
            width: widgetWidth(context: context, width: 20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
               Text(
                 GeneralVariable.cartProduct[index].name?.substring(0,12)??"",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    fontFamily: "Raleway"),
              ),
              SizedBox(
                height: widgetHeight(context: context, height: 4),
              ),
               Text(
                 "${GeneralVariable.cartProduct[index].retailPrice.toString()} \$",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
