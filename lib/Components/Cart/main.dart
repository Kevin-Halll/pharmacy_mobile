import 'package:flutter/material.dart';
import './itemBox.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CartPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.title});

  final String title;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),

      body: Container(
        //Styles
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(231, 241, 248, 255),
        ),

        //Containers
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Positioned(
              width: 390,
              top: 0,
              child: Column(
                children: <Widget>[
                  //first line
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 0),
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              child: Row(
                            children: [
                              Container(
                                // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 2, color: Colors.white)),
                                child: Icon(
                                  Icons.chevron_left_outlined,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                width: 300,
                                child: const Text(
                                  'My Cart',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),

                  //second line
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                      // width: 390,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text('3 items in Cart',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            SizedBox(width: 90),
                            Container(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 10,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Add More Items',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blue,
                                  ),
                                )
                              ],
                            )),
                          ])),

                  //items in cart section
                  Container(
                    child: Column(
                      children: [
                        //Individual product boxs

                        ItemBox(),
                        ItemBox(),
                        ItemBox(),

                      ],
                    ),
                  ),
                ],
              )),
          // ],
          //   ),
          // ),

          Positioned(
              width: 400,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    // bottom: BorderSide(width: 16.0, color: Colors. lightBlue. shade900),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          child: Text('Payment Summary ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ))),
                      Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 2,color: Colors.grey),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text('SubTotal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                    SizedBox(width: 180),
                                    Text('\$ 1080.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                  ],
                                ),
                              ),
                              
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 2,color: Colors.grey),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tax',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                    SizedBox(width: 180),
                                    Text('16.5%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                  ],
                                ),
                              ),
                              
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Total',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                    SizedBox(width: 180),
                                    Text('\$ 1950.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                          width: 350,
                          height: 50,
                          child: TextButton(
                              child: Text(
                                "Checkout".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                                // colors: Colors.lightBlue
                              ),
                              style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.all(15)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // foregroundColor: MaterialStateProperty.all<Color>(
                                  //     Colors.blue.shade900),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    // side: BorderSide(color: Colors.red)
                                  ))),
                              onPressed: () => null)),
                    ]),
              )),
        ]),
      ),
    );
  }
}
