import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';
import 'package:our_market_app/core/widgets/custom_button.dart';
import 'package:our_market_app/core/widgets/custom_cache_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                child: CustomCacheImage(
                  url:
                      "https://img.freepik.com/premium-psd/product-display-3d-podium-background_795097-404.jpg?ga=GA1.1.114806169.1744834769&semt=ais_hybrid&w=740",
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '10% off',
                      style: TextStyle(color: AppColors.kWhiteColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite, color: AppColors.kGreyColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '230 EGP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '250 EGP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            color: AppColors.kGreyColor,
                          ),
                        ),
                      ],
                    ),
                    CustomButton(text: 'Buy Now', onTap: () {}, width: 90),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}