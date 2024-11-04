import 'package:flutter/material.dart';
import 'package:news_app/constants/assets.dart';
import 'package:news_app/models/categorie_model.dart';
import 'package:news_app/views/widgets/categorie_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<CategoryModel> categoryList = [
    CategoryModel(categoryName: 'sports', categoryImage: Assets.sports),
    CategoryModel(categoryName: 'business', categoryImage: Assets.business),
    CategoryModel(categoryName: 'general', categoryImage: Assets.general),
    CategoryModel(categoryName: 'entertaiment', categoryImage: Assets.entertaiment),
    CategoryModel(categoryName: 'technology', categoryImage: Assets.technology),
    CategoryModel(categoryName: 'science', categoryImage: Assets.science),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoryList[index],
            );
          },
        ),
      ),
    );
  }
}
