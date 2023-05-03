import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Hello Traveller !"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://img.traveltriangle.com/blog/wp-content/uploads/2017/08/Solang-Valley2.jpg'),
                fit: BoxFit.fill,
              )),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://www.tourmyindia.com/states/jammu-kashmir/image/hill-stations-jk2.jpg'),
                fit: BoxFit.fill,
              )),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/405px-Colosseo_2020.jpg'),
                fit: BoxFit.fill,
              )),
            )
          ],
        ),
      ),
    );
  }
}
