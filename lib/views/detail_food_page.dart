import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_app/models/food.dart';

class FoodDetail extends StatelessWidget {
  static const String RouteName = '/FoodDetail';
  Food food;

  //constructor
  FoodDetail({this.food});
  @override
  Widget build(BuildContext context) {

    Map<String, Food> arguments = ModalRoute.of(context).settings.arguments;
    this.food = arguments['food'];

    var index = 0;
    final ingredient = food.ingredients == null ?
    Text('null'):
    Column(
      children: food.ingredients.map((ingredient){
        index ++;
        return ListTile(
          leading: CircleAvatar(
            child: Text(index.toString()),
          ),
          title: Text(ingredient.toString()),
        );
      }).toList(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(this.food.name),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: food.urlImage
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Food Name: ",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine'
                  ),
                ),
                Text(
                  food.name,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine'
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: ListTile(
              leading: Icon(Icons.timer,color: Colors.black,),
              title: Text(
                'Duration',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Tangerine'
                  ),
              ),
              subtitle: Text(
                '${food.duration.inMinutes} minutes',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine',
                    fontStyle: FontStyle.italic,
                    color: Colors.black45
                ),
              ),
            )
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Complexity: ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                  ),
                ),
                Text(
                  '${food.complexity.toString().split('.').last}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Center(
              child: Text(
                "Ingredients: ",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine',
                    fontStyle: FontStyle.italic
                ),
              ),
          ),
          ingredient
        ],
      ),
    );
  }
}
