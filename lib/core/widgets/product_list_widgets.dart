import 'package:flutter/material.dart';
import 'package:our_market_app/core/widgets/product_card_widget.dart';

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ProductCard(),
      itemCount: 10,
    );
  }
}

