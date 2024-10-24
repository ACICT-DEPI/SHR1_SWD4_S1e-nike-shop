import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/Core/ApiServer/productApi/product_api.dart';
import 'package:e_commerce/Core/utils/generalVariable/general_variable.dart';
import 'package:e_commerce/Core/utils/widget/Drawer.dart';
import 'package:e_commerce/Features/home/data/repositories/porduct_repo_Imp.dart';
import 'package:e_commerce/Features/home/presentation/manager/home_cubit.dart';
import 'package:e_commerce/Features/home/presentation/pages/favourtePage/fav_page.dart';
import 'package:e_commerce/Features/home/presentation/pages/homePage/home_page.dart';
import 'package:e_commerce/Features/home/presentation/pages/notificationPage/notification_page.dart';
import 'package:e_commerce/Features/home/presentation/pages/profilePage/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart/cartPage/cart_page.dart';

class HomeLayout extends StatefulWidget {
   HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget>screens=[CartPage(),FavPage(),HomePage(),NotificationPage(),ProfilePage()];

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int currentIndex=2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    BlocProvider(create: (context) => HomeCubit(ProductRepoImp(ProductApi(Dio())))..getProducts(),
    child: BlocBuilder<HomeCubit,HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: screens[GeneralVariable.index],
          drawer: DrawerItem(),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            // When This page OPen It Will Open Automatically On Your Homepage
            index: GeneralVariable.index,
            items: const [
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 25,
                  color: Colors.black54,
                ),
              ),
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.favorite_border,
                  size: 24,
                  color: Colors.black54,
                ),
              ),

              CurvedNavigationBarItem(
                child: Icon(Icons.home_outlined,
                    size: 25, color:Colors.black54),
              ),
              CurvedNavigationBarItem(
                child: Icon(Icons.notifications_none, size: 25, color:  Colors.black54),
              ),
              CurvedNavigationBarItem(
                child: Icon(Icons.perm_identity,
                    size: 25, color: Colors.black54),
              ),
            ],
            // The Properties Of NavigationBar
            color: Colors.white,
            iconPadding: 15,
            height: 70,
            buttonBackgroundColor:const Color(0xff20D6EFD),
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            onTap: (index) {
                HomeCubit.get(context).changeIndex(index);
            },
          ),
        );
      },
    ),
    ));
  }
}
