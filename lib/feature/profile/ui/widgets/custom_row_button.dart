import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({super.key, required this.icon, required this.title, required this.onTap});
  final IconData icon;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      color: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: AppColors.kWhiteColor),
              Text(
                title,
                style: TextStyle(
                  color: AppColors.kWhiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.kWhiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
