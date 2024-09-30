import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/Core/cache/cache_data.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Features/onboard/presentation/manager/onboard_cubit.dart';
import 'package:e_commerce/Features/onboard/presentation/widgets/first_onboard_view.dart';
import 'package:e_commerce/Features/onboard/presentation/widgets/second_onboard_view.dart';
import 'package:e_commerce/Features/onboard/presentation/widgets/third_onboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName = "OnBoarding";

  OnBoarding({super.key});

  List<Widget> onBoardView = [
    const FirstOnboardView(),
    const SecondOnboardView(),
    const ThirdOnboardView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: BlocProvider(
          create: (context) => OnboardCubit(),
          child: BlocBuilder<OnboardCubit, OnboardState>(
            builder: (context, state) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/onBoard/Onboard.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          itemBuilder: (context, index, realIndex) {
                            return onBoardView[OnboardCubit.get(context).index];
                          },
                          options: CarouselOptions(
                              height: widgetHeight(context: context, height: 680),
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 15),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 100),
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                OnboardCubit.get(context)
                                    .changeOnboardView(index);
                              },
                              padEnds: true),
                          itemCount: onBoardView.length,
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Positioned(
                          top: 660,
                          left: 145,
                          child: SizedBox(
                            height: 4,
                            width: 125,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width:
                                        OnboardCubit.get(context).index == index
                                            ? 43
                                            : 30,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(20),
                                      color: OnboardCubit.get(context).index ==
                                              index
                                          ? Colors.white
                                          : const Color(0xffFFB21A),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 8.w,
                                  );
                                },
                                itemCount: 3),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30,bottom: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          OnboardCubit.get(context)
                              .changeOnboardViewButton(context);
                          if(OnboardCubit.get(context).index==2){
                            CacheData.setOnBoardingCheckData(key: "OnBoardingCheckData", value: false);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: Size(double.infinity, 50.h),
                            shape: ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadiusDirectional.circular(30))),
                        child: Center(
                          child: OnboardCubit.get(context).index == 2
                              ? Text("Get Started",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Raleway",
                                      color: Colors.black))
                              : Text("Next",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Raleway",
                                      color: Colors.black)),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
