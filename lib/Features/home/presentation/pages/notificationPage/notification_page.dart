import 'package:e_commerce/Core/utils/constants/colors.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/pages/notificationPage/widgets/notification_item.dart';
import 'package:e_commerce/Features/home/presentation/pages/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryBackgroundColor,
        body: SafeArea(
            child: Column(children: [
          const CustomAppBar(
            title: 'Notifications',
          ),
          SizedBox(
            height: widgetHeight(context: context, height: 12),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: widgetWidth(context: context, width: 19),
                ),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Recent',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        )),
                    SizedBox(
                      height: widgetHeight(context: context, height: 20),
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => const NotificationItem(),
                      separatorBuilder: (context, index) => SizedBox(
                        height: widgetHeight(context: context, height: 16),
                      ),
                    )
                  ],
                ))),
          ),
        ])));
  }
}
