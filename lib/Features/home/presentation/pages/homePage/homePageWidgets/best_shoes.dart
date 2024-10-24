import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../Core/cache/cache_data.dart';
import '../../../../../../Core/utils/constant/colors.dart';
import '../../../../../../Core/utils/generalVariable/general_variable.dart';
import '../../../../../../Core/utils/responsiveUi/responsive_height.dart';
import '../../../../../../Core/utils/responsiveUi/responsive_width.dart';
import '../../../manager/home_cubit.dart';

class BestShoes extends StatelessWidget {
  const BestShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(builder: (context, state) {
      if(state is GetProductsSucState){
        return SizedBox(
          height: widgetHeight(context: context, height: 200),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height:
                  widgetHeight(context: context, height: 201),
                  width: widgetWidth(context: context, width: 157),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    REdgeInsetsDirectional.only(
                                        start: 10, top: 14),
                                    child: Icon(
                                      Icons.favorite_border_rounded,
                                      size: 20.sp,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: AlignmentDirectional
                                    .bottomStart,
                                children: [
                                  Padding(
                                    padding:
                                    REdgeInsets.only(top: 15.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Image(
                                          image: HomeCubit
                                              .get(context)
                                              .productRepoImp
                                              .products[index].image
                                              ?.original == ""
                                              ?
                                          NetworkImage(HomeCubit.get(context).productRepoImp.products[0].image?.original??""):NetworkImage(
                                              HomeCubit
                                                  .get(context).productRepoImp.products[index].image?.original ?? "${HomeCubit.get(context).productRepoImp.products[0].image?.original}"),
                                          width: widgetWidth(
                                            context: context,
                                            width: 105,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                    REdgeInsetsDirectional.only(
                                        start: 12),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "BEST SELLER",
                                              style: TextStyle(
                                                  fontFamily:
                                                  "poppins",
                                                  fontSize: 10.sp,
                                                  color: AppColors
                                                      .blueColor),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: REdgeInsetsDirectional.only(
                                start: 12, top: 3),
                            child: Row(
                              children: [
                                Text(
                                  HomeCubit.get(context).productRepoImp.products[index].name?.substring(0,15)??"Nike jordan",
                                  style: TextStyle(
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Color(0xff6A6A6A)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: REdgeInsetsDirectional.only(
                                start: 12, top: 3),
                            child: Row(
                              children: [
                                Text(
                                  "\$ ${HomeCubit.get(context).productRepoImp.products[index].retailPrice}",
                                  style: TextStyle(
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () async {
                          String id=(HomeCubit.get(context).productRepoImp.products[index].id??"");
                          GeneralVariable.id.add(id);
                          await CacheData.setIdListData(key: "id_list", value: GeneralVariable.id??[]);
                        },
                        child: Container(
                          height: widgetHeight(
                              context: context, height: 50),
                          width: 42,
                          decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24.r),
                                  bottomRight:
                                  Radius.circular(24.r))),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                              size: 23,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(
                    width: widgetWidth(context: context, width: 8),
                  ),
              itemCount: HomeCubit
                  .get(context)
                  .productRepoImp
                  .products
                  .length),
        );
      }
        if(state is ProductsLoading ){
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                height: widgetHeight(context: context, height: 200),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(.5),
                  highlightColor: Colors.white,
                  child:Container(
                    height:
                    widgetHeight(context: context, height: 201),
                    width: widgetWidth(context: context, width: 157),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional
                                      .bottomStart,
                                  children: [
                                    Padding(
                                      padding:
                                      REdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [

                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                      REdgeInsetsDirectional.only(
                                          start: 12),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: REdgeInsetsDirectional.only(
                                  start: 12, top: 3),
                              child: Row(
                                children: [
                                ],
                              ),
                            ),
                            Padding(
                              padding: REdgeInsetsDirectional.only(
                                  start: 12, top: 3),
                              child: Row(
                                children: [
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: widgetWidth(context: context, width: 10),),
              SizedBox(
                height: widgetHeight(context: context, height: 200),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(.5),
                  highlightColor: Colors.white,
                  child:Container(
                    height:
                    widgetHeight(context: context, height: 201),
                    width: widgetWidth(context: context, width: 157),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional
                                      .bottomStart,
                                  children: [
                                    Padding(
                                      padding:
                                      REdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [

                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                      REdgeInsetsDirectional.only(
                                          start: 12),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: REdgeInsetsDirectional.only(
                                  start: 12, top: 3),
                              child: Row(
                                children: [
                                ],
                              ),
                            ),
                            Padding(
                              padding: REdgeInsetsDirectional.only(
                                  start: 12, top: 3),
                              child: Row(
                                children: [
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: widgetWidth(context: context, width: 10),),
              SizedBox(
                height: widgetHeight(context: context, height: 200),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(.5),
                  highlightColor: Colors.white,
                  child:Container(
                    height:
                    widgetHeight(context: context, height: 201),
                    width: widgetWidth(context: context, width: 157),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional
                                      .bottomStart,
                                  children: [
                                    Padding(
                                      padding:
                                      REdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [

                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                      REdgeInsetsDirectional.only(
                                          start: 12),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: REdgeInsetsDirectional.only(
                                  start: 12, top: 3),
                              child: const Row(
                                children: [
                                ],
                              ),
                            ),
                            Padding(
                              padding: REdgeInsetsDirectional.only(
                                  start: 12, top: 3),
                              child: const Row(
                                children: [
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
      return Container();
    },);
  }
}
