import 'package:flutter/material.dart';
import 'package:food_app/views/carigories_page.dart';
import 'package:food_app/views/detail_food_page.dart';
import 'package:food_app/views/foods_page.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/FoodsPage': (context) => FoodsPage(),
      '/CategoriesPage': (context) => CategoriesPage(),
      '/FoodDetail' : (context) => FoodDetail(),
    },
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food App",),
        centerTitle: true,
      ),
      body: CategoriesPage(),
    );
  }
}
