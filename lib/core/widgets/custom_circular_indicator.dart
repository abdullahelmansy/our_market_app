import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';

class CustomCircularProIndicator extends StatelessWidget {
  const CustomCircularProIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: AppColors.kPrimaryColor),
    );
  }
}