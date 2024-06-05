import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationTextField extends StatelessWidget {
  RegistrationTextField(
      {required this.labelText,
      required this.hintText,
      required this.obscure,
      required this.pass,
      super.key});

  String labelText;
  String hintText;
  bool obscure;
  bool pass;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.only(left: 25),
          child: Text(
            labelText,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "Raleway",
                color: const Color(0xff1A2530)),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          padding: REdgeInsets.only(left: 15, top: 3, right: 5),
          margin: REdgeInsets.only(left: 20, right: 30),
          height: 58.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade300.withOpacity(0.6),
              borderRadius: BorderRadiusDirectional.circular(16.r)),
          child: TextFormField(
            obscuringCharacter: "*",
            obscureText: obscure,
            decoration: InputDecoration(
              suffixIcon: pass?obscure?Icon(Icons.visibility_off)
                  :Icon(Icons.visibility)
                  :null,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: const Color(0xff6A6A6A).withOpacity(0.7),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
              fillColor: Colors.grey.shade300.withOpacity(0.6),
              enabledBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        )
      ],
    );
  }
}
