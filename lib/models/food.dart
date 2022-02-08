import 'dart:math';

import 'package:flutter/cupertino.dart';

class Food {
  int id;
  String name;
  String urlImage;
  Duration duration;
  Complexity complexity;

  // one food has many ingredients
  // List<String> ingredients = <String>[];
  List<String> ingredients = List<String>();
  // one category has many food
  int categoryId;

  Food({
    @required this.name,
    @required this.urlImage,
    @required this.duration,
    @required this.complexity,
    this.categoryId,
    this.ingredients,
  }){
    this.id = Random().nextInt(1000);
  }
}

enum Complexity {
  Simple,
  Medium,
  Hard
}
