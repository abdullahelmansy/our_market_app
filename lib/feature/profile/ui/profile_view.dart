import 'package:flutter/material.dart';
import 'package:our_market_app/core/helpers/navigation.dart';
import 'package:our_market_app/core/utils/app_color.dart';
import 'package:our_market_app/feature/profile/ui/edit_name_view.dart';
import 'package:our_market_app/feature/profile/ui/my_orders_view.dart';
import 'package:our_market_app/feature/profile/ui/widgets/custom_row_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(24),
      color: AppColors.kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.kPrimaryColor,
              child: Icon(Icons.person, size: 60, color: AppColors.kWhiteColor),
            ),
            SizedBox(height: 10),
            Text(
              'User Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'User Email',
              style: TextStyle(fontSize: 18, color: AppColors.kGreyColor),
            ),
            CustomRowButton(
              icon: Icons.person,
              title: 'Edit Name',
              onTap: () {
                navigatePush(context, EditNameView());
              },
            ),
            CustomRowButton(
              icon: Icons.shopping_basket,
              title: 'My Orders',
              onTap: () {
                navigatePush(context, MyOrdersView());
              },
            ),
            CustomRowButton(icon: Icons.logout, title: 'Logout', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
