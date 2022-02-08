import 'package:flutter/cupertino.dart';

class Category{
  final int id;
  final String content;
  final Color color;

  // constructor
  Category({
    @required this.id,
    @required this.content,
    this.color
  });
}