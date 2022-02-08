import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class FoodItem extends StatelessWidget {
  Food food;

  FoodItem({this.food});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Center(
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: food.urlImage),
              )),
          Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0,color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black45
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.timer,color: Colors.white,),
                    Text(
                      '${food.duration.inMinutes} minutes',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
          ),
          Positioned(
              bottom: 10.0,
              right: 10.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white,width: 2.0)
                ),
                child: Text(
                  food.name,
                  style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tangerine'
                  ),
                ),
              )
          ),
          Positioned(
              top: 10.0,
              right: 10.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white,width: 2.0)
                ),
                child: Text(
                  '${food.complexity.toString().split('.').last}',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
