import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:e_commerce/Core/cache/cache_data.dart';
import 'package:e_commerce/Core/utils/constant/colors.dart';
import 'package:e_commerce/Core/utils/generalVariable/general_variable.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:e_commerce/Features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'homePageWidgets/best_shoes.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchBar = TextEditingController();
  List<String>catgory=["all shoes","Outdor","tennis","jorden"];
  int categoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            color: AppColors.primary,
            padding: REdgeInsetsDirectional.only(start: 21, end: 21, top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        setState(() {
                          Scaffold.of(context).openDrawer();
                          HomeCubit.get(context).getProducts();
                        });
                        await HomeCubit
                            .get(context)
                            .z
                            .toggle
                            ?.call();
                      },
                      child: ImageIcon(
                        const AssetImage("assets/images/homepage/list.png"),
                        size: 28.sp,
                      ),
                    ),
                    Image(
                      image:
                      const AssetImage("assets/images/homepage/text.png"),
                      width: widgetWidth(context: context, width: 110),
                    ),
                    Image(
                      image:
                      const AssetImage("assets/images/homepage/Icon.png"),
                      height: widgetHeight(context: context, height: 50),
                    ),
                  ],
                ),
                SizedBox(
                  height: widgetHeight(context: context, height: 16),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: widgetHeight(context: context, height: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.r),
                          color: Colors.white,
                        ),
                        child: AnimatedSearchBar(
                            height: 60,
                            label: 'Looking for shoes',
                            searchIcon: Icon(Icons.search_rounded),
                            controller: searchBar,
                            labelStyle: const TextStyle(
                                fontSize: 12, fontFamily: "poppins"),
                            searchStyle: const TextStyle(color: Colors.black),
                            cursorColor: Colors.white,
                            textInputAction: TextInputAction.done,
                            searchDecoration: const InputDecoration(
                              hintText: 'Search',
                              alignLabelWithHint: true,
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {},
                            onFieldSubmitted: (value) {}),
                      ),
                    ),
                    SizedBox(
                      width: widgetWidth(context: context, width: 14),
                    ),
                    Container(
                      width: widgetWidth(context: context, width: 52),
                      height: widgetHeight(context: context, height: 52),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.blueColor),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.slider_horizontal_3,
                          color: Colors.white,
                          size: 24.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: widgetHeight(context: context, height: 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Select Category",
                          style:
                          TextStyle(fontSize: 16.sp, fontFamily: "Raleway"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 15),
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 42),
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  categoryIndex = index;
                                });
                              },
                              child: Container(
                                width:
                                widgetWidth(context: context, width: 110),
                                height:
                                widgetHeight(context: context, height: 40),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: categoryIndex == index
                                        ? AppColors.blueColor
                                        : Colors.white),
                                child: Center(
                                  child: Text(
                                    catgory[index],
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: categoryIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontFamily: "poppins"),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(
                                width: widgetWidth(context: context, width: 16),
                              ),
                          itemCount: 4),
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 24),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "popular shoes",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Rlaeway"),
                        ),
                        Text(
                          "see all",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.blueColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Rlaeway"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 16),
                    ),
                    BestShoes(),
                    SizedBox(
                      height: widgetHeight(context: context, height: 24),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Arrivals",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Rlaeway"),
                        ),
                        Text(
                          "see all",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.blueColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Rlaeway"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 16),
                    ),
                    Center(
                      child: Container(
                        margin: REdgeInsets.only(bottom: 20),
                        height: widgetHeight(context: context, height: 110),
                        width: widgetWidth(context: context, width: 315),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/homepage/design.png"),
                                fit: BoxFit.fill),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Padding(
                          padding:
                          REdgeInsetsDirectional.only(start: 12.0, end: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: widgetHeight(
                                        context: context, height: 10),
                                  ),
                                  Text(
                                    "Summer Sale",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "15\% OFF ",
                                    style: TextStyle(
                                        fontSize: 34.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff674DC5)),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: widgetWidth(context: context, width: 15),
                              ),
                              const Image(
                                  image: AssetImage(
                                      "assets/images/homepage/banerShoes.png"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
