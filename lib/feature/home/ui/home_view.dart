import 'package:flutter/material.dart';
import 'package:our_market_app/core/widgets/custom_search_feild.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          CustomSearchFeild(),
          Image.asset('assets/images/buy.jpg', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
