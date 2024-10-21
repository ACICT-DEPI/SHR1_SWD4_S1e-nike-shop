import 'package:e_commerce/Features/home/presentation/manager/home_cubit.dart';
import 'package:e_commerce/Features/home/presentation/pages/homeLayout.dart';
import 'package:e_commerce/Features/home/presentation/pages/homePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerItem extends StatelessWidget {
   DrawerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context, state) {
        return ZoomDrawer(
          controller:HomeCubit.get(context).z,
          borderRadius: 50,
          // showShadow: true,
          openCurve: Curves.fastOutSlowIn,
          slideWidth: MediaQuery.of(context).size.width * 0.65,
          duration: const Duration(milliseconds: 500),
          menuScreenTapClose: true,
          // angle: 0.0,
          menuBackgroundColor: Colors.blue,
          mainScreen:  HomeLayout(),
          // moveMenuScreen: false,
          menuScreen: Scaffold(
            backgroundColor: Colors.blue,
            body:  Column(
              children: [
                // Profile section
                Container(
                  padding: REdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child:  Column(
                    children: [
                      CircleAvatar(
                        radius: 50.r,
                        backgroundImage: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/transferme-a6187.appspot.com/o/IMG_20240211_184859_371.jpg?alt=media&token=7a30ac32-7105-4d72-ab7b-8bedad5405a5'), // Replace with actual image URL
                      ),
                      SizedBox(height: 10),
                      Text(
                        'mohamed sabry',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // Menu items
                Expanded(
                  child: ListView(
                    padding: REdgeInsets.all(8),
                    children: [
                      _buildMenuItem(Icons.person, 'Profile'),
                      _buildMenuItem(Icons.shopping_cart, 'My Cart'),
                      _buildMenuItem(Icons.favorite, 'Favorite'),
                      _buildMenuItem(Icons.list, 'Orders'),
                      _buildMenuItem(Icons.notifications, 'Notifications'),
                      _buildMenuItem(Icons.settings, 'Settings'),
                      const Divider(),
                      _buildMenuItem(Icons.logout, 'Sign Out'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget _buildMenuItem(IconData icon, String title) {
  return ListTile(
    leading: Icon(icon, color: Colors.white),
    title: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
    onTap: () {
      // Handle menu item tap
    },
  );
}
