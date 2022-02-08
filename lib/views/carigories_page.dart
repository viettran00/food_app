import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/views/categoryItem_page.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _buildCategoryItem = FAKE_CATEGORIES.map((eachCategory) {
      return CategoryItem(category: eachCategory,);
    }).toList();

    return GridView(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 3 / 2,
          maxCrossAxisExtent: 300.0),
      children: _buildCategoryItem,
    );
  }
}
