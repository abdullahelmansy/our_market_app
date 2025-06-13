import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';
import 'package:our_market_app/core/widgets/custom_button.dart';
import 'package:our_market_app/feature/auth/ui/widgets/custom_text_for_feild.dart';

class EditNameView extends StatelessWidget {
  const EditNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        title: Text(
          'Edit Name',
          style: TextStyle(color: AppColors.kWhiteColor),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: AppColors.kWhiteColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextFormFeild(
                label: 'Enter Your Name',
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 20),
              CustomButton(text: 'Update Name', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
