import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Order extends StatelessWidget {
  Order({super.key});

  List<String> products = ["Apple", "Banana", "Cherry", "Dates"];
  List<String> productsPrice = ["\$20", "\$30", "\$40", "\$50"];
  List<String> mode = [
    "Delievered",
    "Order Placed",
    "Payment Confirmed",
    "Processed"
  ];
  List<String> imageprod = [
    'https://5.imimg.com/data5/WA/NV/LI/SELLER-52971039/apple-indian-500x500.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Banana-Single.jpg/800px-Banana-Single.jpg',
    'https://media.istockphoto.com/id/533381303/photo/cherry-with-leaves-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=6BV79sui5Hc6lj555eV_ePiGlKfdZveIG9B5hIWidug=',
    'https://media.istockphoto.com/id/1145159809/photo/dried-date-fruit-isolated-on-white.jpg?s=612x612&w=0&k=20&c=o0e-l4aUuXu64zpGCymzOn2QZ0tNWJxlKSPK3ygUqZE='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 95, 168, 97),
          title: Text("Order History"),
          actions: <Widget>[
            Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.shopping_cart),
                SizedBox(
                  width: 20,
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "  Transactions",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 120,
                        height: 30,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 186, 208, 187),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "January 2020",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Wrap(children: [
                    ListView.builder(
                      itemCount: products.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(imageprod[index]),
                          ),
                          title: Text(
                            products[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            productsPrice[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          trailing: Container(
                            width: 160,
                            height: 30,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: mode[index] == "Delievered"
                                    ? Color.fromARGB(255, 86, 143, 89)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(32)),
                            child: Center(
                              child: Text(
                                mode[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },

                      // ListTile(
                      //   leading: Image.network(
                      //       'https://5.imimg.com/data5/WA/NV/LI/SELLER-52971039/apple-indian-500x500.jpg'),
                      //   title: Text(
                      //     "Apple",
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      //   subtitle: Text(
                      //     " \$20",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         color: Color.fromARGB(255, 47, 119, 49),
                      //         fontSize: 15),
                      //   ),
                      //   trailing: Container(
                      //     width: 125,
                      //     height: 30,
                      //     padding: EdgeInsets.all(5),
                      //     decoration: BoxDecoration(
                      //         color: Color.fromARGB(255, 86, 143, 89),
                      //         borderRadius: BorderRadius.circular(32)),
                      //     child: Center(
                      //       child: Text(
                      //         "Delievered",
                      //         style: TextStyle(
                      //             color: Colors.white, fontSize: 15),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // ListTile(
                      //   leading: Image.network(
                      //       'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Banana-Single.jpg/800px-Banana-Single.jpg'),
                      //   title: Text(
                      //     "Banana",
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      //   subtitle: Text(
                      //     "\$30",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15,
                      //         color: Color.fromARGB(255, 47, 119, 49)),
                      //   ),
                      //   trailing: Container(
                      //     width: 125,
                      //     height: 30,
                      //     padding: EdgeInsets.all(5),
                      //     decoration: BoxDecoration(
                      //         border: Border.all(),
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(32)),
                      //     child: Center(
                      //       child: Text(
                      //         "Order Placed",
                      //         style: TextStyle(
                      //             color: Color.fromARGB(255, 47, 119, 49),
                      //             fontSize: 15),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // ListTile(
                      //   leading: Image.network(
                      //       'https://img.freepik.com/free-vector/realistic-berries-composition-with-isolated-image-cherry-with-ripe-leaves-blank-background-vector-illustration_1284-66040.jpg?w=2000'),
                      //   title: Text(
                      //     "Cherry",
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      //   subtitle: Text(
                      //     "\$40",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15,
                      //         color: Color.fromARGB(255, 47, 119, 49)),
                      //   ),
                      //   trailing: Container(
                      //     width: 185,
                      //     height: 30,
                      //     padding: EdgeInsets.all(5),
                      //     decoration: BoxDecoration(
                      //         border: Border.all(),
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(32)),
                      //     child: Center(
                      //       child: Text(
                      //         "Payment Confirmed",
                      //         style: TextStyle(
                      //             color: Color.fromARGB(255, 47, 119, 49),
                      //             fontSize: 15),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // ListTile(
                      //   leading: Image.network(
                      //       'https://media.istockphoto.com/id/1145159809/photo/dried-date-fruit-isolated-on-white.jpg?s=612x612&w=0&k=20&c=o0e-l4aUuXu64zpGCymzOn2QZ0tNWJxlKSPK3ygUqZE='),
                      //   title: Text(
                      //     "Dates",
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      //   subtitle: Text(
                      //     "\$40",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15,
                      //         color: Color.fromARGB(255, 47, 119, 49)),
                      //   ),
                      //   trailing: Container(
                      //     width: 125,
                      //     height: 30,
                      //     padding: EdgeInsets.all(5),
                      //     decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         border: Border.all(),
                      //         borderRadius: BorderRadius.circular(32)),
                      //     child: Center(
                      //       child: Text(
                      //         "Processed",
                      //         style: TextStyle(
                      //             color: Color.fromARGB(255, 47, 119, 49),
                      //             fontSize: 15),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                  ])
                ])));
  }
}
