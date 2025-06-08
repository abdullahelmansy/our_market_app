import 'package:flutter/material.dart';
import 'package:our_market_app/core/utils/app_color.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.kPrimaryColor,
                    child: Icon(
                      Category.getCategories[index].icon,
                      size: 40,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
                Text(Category.getCategories[index].name),
              ],
            ),
        itemCount: Category.getCategories.length,
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;
  Category({required this.name, required this.icon});

  static List<Category> getCategories = [
    Category(name: 'Sports', icon: Icons.sports),
    Category(name: 'Electronics', icon: Icons.tv),
    Category(name: 'Collections', icon: Icons.collections),
    Category(name: 'Books', icon: Icons.book),
    Category(name: 'Games', icon: Icons.games),
  ];
}
