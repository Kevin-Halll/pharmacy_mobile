import 'package:flutter/material.dart';
import 'package:pharmacy_app_v2/widgets/cart_list_widget.dart';

import '../../data/data.dart';
import '../../models/cartItemModel.dart';

class CartPage extends StatefulWidget {
  static const routeName = '/cartPage';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var listData = Cart_Dummy_Data;
  var orientation, size,height,width;

  // CartPage(this.listData);
  @override
  Widget build(BuildContext context) {

  // getting the orientation of the app
    orientation = MediaQuery.of(context).orientation;
     
    //size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(253, 202, 229, 249),
      body: Padding(
        padding: EdgeInsets.only(top:height*0.025, left: height*0.015, right: height*0.015, bottom: height*0.008),
        child: Column(children: [
          Container(
            // padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: height*0.035),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width* 0.11,
                        height: height* 0.055,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_rounded,
                                size: height*0.030,
                              color: Colors.grey),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "My Cart",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(width: 45)
                    ],
                  ),
                ),
                SizedBox(height: height*0.020),
                Container(
                  margin: EdgeInsets.only(bottom: height*0.005),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${itemCount()} items in the cart",
                            // style: TextStyle(fontSize: height*0.023)
                            ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add, size: height*0.023),
                          label: Text(
                            "Add More Items",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),

          // ),
          Expanded(
            child: SingleChildScrollView(
              child: CartListWidget(),
            ),
          ),
        ]),
      ),



      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        height: height*0.32,
        // height: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(width*0.115),
              topRight: Radius.circular(width*0.115),
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text("Payment Summary",
              style: TextStyle(fontSize: width*0.048, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            // padding: EdgeInsets.only(top: 3, bottom: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SubTotal",
                  style: TextStyle(fontSize: width*0.035, fontWeight: FontWeight.w700),
                ),
                Text(
                  "\$${totalAmount().toStringAsFixed(2)}",
                  style: TextStyle(fontSize: width*0.035, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            // padding: EdgeInsets.only(top: 3, bottom: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax",
                  style: TextStyle(fontSize: width*0.035, fontWeight: FontWeight.w700),
                ),
                Text(
                  "\$${taxAmount().toStringAsFixed(2)}",
                  style: TextStyle(fontSize: width*0.035, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            // padding: EdgeInsets.only(top: 3, bottom: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: width*0.035, fontWeight: FontWeight.w700),
                ),
                Text(
                  "\$${grandTotals().toStringAsFixed(2)}",
                  style: TextStyle(fontSize: width*0.035, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {},
            child: Text("Checkout",
                style: TextStyle(fontSize: width*0.048, fontWeight: FontWeight.w500)),
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(27, 117, 188, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  // side: BorderSide(width: 3, color: Colors.black),
                ),
                minimumSize: Size.fromHeight(height*0.060),
                // padding: EdgeInsets.all(8)
                // NEW
                ),
          )
        ]),
      ),
    );
  }
}
