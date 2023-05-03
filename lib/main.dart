import 'package:demo/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Pranav Dave",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aWNlY3JlYW18ZW58MHx8MHx8&w=1000&q=80'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 260,
                  color: Colors.white60,
                  child: Column(
                    children: [
                      Icon(Icons.fastfood),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "GOOD FOOD",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      Text(
                        "Nutrionally Balanced,",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("easy to cook,", style: TextStyle(fontSize: 15)),
                      Text("Quality fresh local",
                          style: TextStyle(fontSize: 15)),
                      Text('ingredients', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()),
                          );
                        },
                        child: Text(
                          "Create An Account",
                          style: TextStyle(fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, // Background color
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Already have an account ? Sign In",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
