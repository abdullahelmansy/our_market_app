import 'package:flutter/material.dart';
import 'package:our_market_app/core/widgets/custom_search_feild.dart';
import 'package:our_market_app/core/widgets/product_list_widgets.dart';
import 'package:our_market_app/feature/home/ui/widgets/categories_list.dart';

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
          Text('Popular Categories', style: TextStyle(fontSize: 20)),
          SizedBox(height: 15),
          CategoriesListWidget(),
          SizedBox(height: 15),
          Text('Recently Products', style: TextStyle(fontSize: 20)),
          SizedBox(height: 15),
          ProductsListWidget(),
        ],
      ),
    );
  }
}

