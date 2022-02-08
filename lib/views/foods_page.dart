import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/views/detail_food_page.dart';
import 'package:food_app/views/foodItem_page.dart';

// ignore: must_be_immutable
class FoodsPage extends StatelessWidget {
  static const String RouteName = '/FoodsPage';
  Category category;

  // constructor
  FoodsPage({this.category});

  @override
  Widget build(BuildContext context) {
    // tham so chuan cua router
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];

    List<Food> foods = FAKE_FOODS
        .where((food) => food.categoryId == this.category.id)
        .toList();

    final _buildFoodItem = foods.map((food) {
      return InkWell(
        onTap: (){
          print(food.name);
          Navigator.pushNamed(context, FoodDetail.RouteName, arguments: {'food': food});
        },
        child: FoodItem(food: food,),
      );
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(this.category.content),
        centerTitle: true,
      ),
      body: ListView(
        children: _buildFoodItem,
      ),
    );
  }
}
