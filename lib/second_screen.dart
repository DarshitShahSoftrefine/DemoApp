import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            toolbarHeight: 70,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello Traveller !",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  "Where do you want to go ?",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                )
              ],
            ),
            backgroundColor: Colors.grey[200],
            actions: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      'https://cdn1.vectorstock.com/i/1000x1000/75/30/cute-cartoon-toddler-boy-standing-with-smartphone-vector-15817530.jpg'),
                ),
              )
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Container(
                  //   width: 300,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(32),
                  //   ),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       hintStyle: TextStyle(fontSize: 17),
                  //       hintText: 'Find Destination',
                  //       prefixIcon: Icon(
                  //         Icons.location_on,
                  //         color: Colors.red,
                  //       ),
                  //       fillColor: Colors.grey[200],
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(12),
                  //       ),
                  //       contentPadding: EdgeInsets.all(20),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(
                      bottom: 5,
                    ),
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20.0,
                              spreadRadius: 0,
                              offset: Offset(0, 20)),
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                        labelText: "Find Destination",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://img.traveltriangle.com/blog/wp-content/uploads/2017/08/Solang-Valley2.jpg',
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 27,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                          ),
                          child: Center(
                            child: Text(
                              "Manali",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.black26,
                              child: Text(
                                "3  \n Places",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://www.tourmyindia.com/states/jammu-kashmir/image/hill-stations-jk2.jpg',
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 27,
                          decoration: const BoxDecoration(
                            color: Colors.white38,
                          ),
                          child: const Center(
                            child: Text(
                              "Kashmir",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.black26,
                              child: Text(
                                "10  \n Places",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/405px-Colosseo_2020.jpg',
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          width: 85,
                          height: 27,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                          ),
                          child: Center(
                            child: Text(
                              "Rome",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.black26,
                              child: Text(
                                "12  \n Places",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
