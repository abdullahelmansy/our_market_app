import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';

class CustomSearchFeild extends StatelessWidget {
  const CustomSearchFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Search in Market",
        suffixIcon: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryColor,
            foregroundColor: AppColors.kWhiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          label: const Icon((Icons.search)),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
