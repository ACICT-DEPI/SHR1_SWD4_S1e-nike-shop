import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:e_commerce/Features/home/presentation/pages/cartPage/cart_page.dart';
import 'package:e_commerce/Features/home/presentation/pages/favourtePage/fav_page.dart';
import 'package:e_commerce/Features/home/presentation/pages/homePage/home_page.dart';
import 'package:e_commerce/Features/home/presentation/pages/notificationPage/notification_page.dart';
import 'package:e_commerce/Features/home/presentation/pages/profilePage/profile_page.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
   HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget>screens=[HomePage(),FavPage(),CartPage(),NotificationPage(),ProfilePage()];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int currentIndex=2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: Color(0xffF7F7F9),
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        // When This page OPen It Will Open Automatically On Your Homepage
        index: currentIndex,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
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
            child: Icon(Icons.shopping_bag_outlined,
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
        height: 80,
        buttonBackgroundColor:const Color(0xff20D6EFD),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
           currentIndex=index;
          });
        },
      ),
    ));
  }
}
