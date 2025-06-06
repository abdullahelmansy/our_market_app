import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:our_market_app/core/utils/app_color.dart';
import 'package:our_market_app/feature/favorite/ui/favorite_view.dart';
import 'package:our_market_app/feature/home/ui/home_view.dart';
import 'package:our_market_app/feature/profile/ui/profile_view.dart';
import 'package:our_market_app/feature/store/ui/store_voew.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({super.key});
  final List<Widget> screens = [
    HomeView(),
    StoreView(),
    FavoriteView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[0]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: GNav(
          rippleColor:
              AppColors.kPrimaryColor, // tab button ripple color when pressed
          hoverColor: AppColors.kPrimaryColor, // tab button hover color

          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 400), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: AppColors.kGreyColor, // unselected icon color
          activeColor: AppColors.kWhiteColor, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor:
              AppColors.kPrimaryColor, // selected tab background color
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ), // navigation bar padding
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.store, text: 'Store'),
            GButton(icon: Icons.favorite, text: 'Favorites'),
            GButton(icon: Icons.person, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
