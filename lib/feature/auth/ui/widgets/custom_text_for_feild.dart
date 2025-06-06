import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key, this.keyboardType, required this.label, this.suffixIcon, this.obscureText,
  });
  final TextInputType? keyboardType;
  final String label;  
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      keyboardType:keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: label,
         border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
