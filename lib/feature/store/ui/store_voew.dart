import 'package:flutter/material.dart';
import 'package:our_market_app/core/widgets/custom_search_feild.dart';
import 'package:our_market_app/core/widgets/product_list_widgets.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Center(
            child: Text(
              'Welcome to Our Market',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          CustomSearchFeild(),
          SizedBox(height: 15),
          ProductsListWidget(),
        ],
      ),
    );
  }
}
