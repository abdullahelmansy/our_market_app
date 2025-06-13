import 'package:flutter/material.dart';
import 'package:our_market_app/core/widgets/product_card_widget.dart';

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({super.key, this.shrinkWrap, this.physics});
  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap ?? true,
      physics: physics ?? NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ProductCard(),
      itemCount: 10,
    );
  }
}
