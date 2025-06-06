import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';
import 'package:our_market_app/feature/auth/ui/widgets/custom_button.dart';
import 'package:our_market_app/feature/auth/ui/widgets/custom_text_for_feild.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Enter your email to reset your password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            Card(
              margin: EdgeInsets.all(24),
              color: AppColors.kWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextFormFeild(
                        label: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),

                      SizedBox(height: 20),
                      CustomButton(text: 'Send', onTap: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
