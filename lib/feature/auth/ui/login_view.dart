import 'package:flutter/material.dart';
import 'package:our_market_app/core/helpers/navigation.dart';
import 'package:our_market_app/core/utils/app_color.dart';
import 'package:our_market_app/feature/auth/ui/forget_password_view.dart';
import 'package:our_market_app/feature/auth/ui/signup_view.dart';
import 'package:our_market_app/core/widgets/custom_button.dart';
import 'package:our_market_app/feature/auth/ui/widgets/custom_text_button.dart';
import 'package:our_market_app/feature/auth/ui/widgets/custom_text_for_feild.dart';
import 'package:our_market_app/feature/nav_bar/ui/main_home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'Welcome to Our Market',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        CustomTextFormFeild(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          label: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomTextButton(
                              text: 'Forget Password?',
                              onTap: () {
                                navigatePush(
                                  context,
                                  const ForgetPasswordView(),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                          text: 'Login',
                          onTap: () {
                            navigatePushReplace(context, MainHomeView());
                          },
                        ),
                        SizedBox(height: 20),
                        CustomButton(text: 'Login With Google', onTap: () {}),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? "),
                            CustomTextButton(
                              text: 'Sign Up',
                              onTap: () {
                                navigatePushReplace(
                                  context,
                                  const SignUpView(),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
