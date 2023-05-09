import 'package:demo/food_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "FOODECA",
          style: TextStyle(color: Colors.black, fontSize: 30),
        )),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Image.network(
                'https://www.daysoftheyear.com/wp-content/uploads/national-fast-food-day.jpg'),
          ),
          Container(
            child: Center(
              child: Text(
                "What's Your\nFavourite Food ?",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          FilledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodDetails()),
              );
            },
            child: Text("Get Started"),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                primary: Colors.black,
                side: BorderSide(width: 2, color: Colors.black),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                padding: EdgeInsets.all(20)),
          ),
          // FloatingActionButton(
          //   onPressed: () {},
          //   child: Text("Get Started"),
          //   backgroundColor: Colors.black,
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          // )
        ],
      ),
    );
  }
}
