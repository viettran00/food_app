import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/views/foods_page.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  //constructor
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print(category.content);
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context){
        //     return FoodsPage(category: category,);
        //   })
        // );
        
        Navigator.pushNamed(context, FoodsPage.RouteName,arguments: {'category': category});
      },
      child: Container(
          decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(10.0)),
          child: Center(
            child: Text(
              category.content,
              style: TextStyle(
                  fontFamily: 'Tangerine',
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )
      ),
    );
  }
}
