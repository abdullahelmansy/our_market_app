import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';
import 'package:our_market_app/feature/auth/ui/login_view.dart';
import 'package:our_market_app/feature/nav_bar/ui/main_home_view.dart';

void main() {
  runApp(const OurMarket());
}

class OurMarket extends StatelessWidget {
  const OurMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Market App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
      ),
      home: MainHomeView(),
    );
  }
}
