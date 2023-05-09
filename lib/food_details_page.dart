import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("              My Order"),
        backgroundColor: Colors.black,
        //leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 20,
        ),
        Container(
            padding: EdgeInsets.all(20),
            child: Image.network(
              'https://health.clevelandclinic.org/wp-content/uploads/sites/3/2021/01/fastFoods1-1199461884-770x533-1.jpg',
            )),
        Text(
          "  Details",
          style: TextStyle(color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                'https://www.shutterstock.com/image-vector/business-graph-chart-260nw-152723318.jpg',
                width: 100,
                height: 100,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              width: 100,
              height: 100,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                  'https://images.ctfassets.net/pdf29us7flmy/2wG8ah2H71AaboKXxJikkC/76e80c9d3833d1054bc327db256e69a0/GOLD-6487-CareerGuide-Batch04-Images-GraphCharts-02-Bar.png?w=720&q=100&fm=jpg'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              width: 100,
              height: 100,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                  'https://previews.123rf.com/images/djordjer/djordjer1105/djordjer110500015/9435575-papier-millim%C3%A9tr%C3%A9-avec-tableau-de-perte-de-profits.jpg'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              width: 100,
              height: 160,
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          color: Colors.deepPurpleAccent,
          width: 100,
          height: 100,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Text("Hello"),
        )
      ]),
    );
  }
}
