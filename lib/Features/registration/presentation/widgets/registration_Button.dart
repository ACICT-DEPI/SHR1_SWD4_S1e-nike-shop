import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationButton extends StatelessWidget {
  RegistrationButton({
    required this.title,
    required this.color,
    required this.textColor,
    required this.image,
    required this.function,
    super.key});

  String title;
  Color color;
  Color textColor;
  ImageProvider? image;
  Function function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 20, right: 30),
      child: ElevatedButton(
        onPressed: (){
          function();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
            fixedSize: Size(335.w, widgetHeight(context: context, height: 55)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image==null?const SizedBox():Image(image: image! ,width: 23.w,
            height: 23.h),
            SizedBox(width: 14.w,),
            Text(
              title,
              style: TextStyle(
                  fontFamily: "Raleway",
                  color: textColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
