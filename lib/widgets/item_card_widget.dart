import 'package:flutter/material.dart';
import '../../models/cartItemModel.dart';

import '../data/data.dart';

class ItemCardWidget extends StatefulWidget {
  CartItem data;

  ItemCardWidget({required this.data});

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  var quan;
  var prodPrice;

  @override
  void initState() {
    quan = widget.data.quantity;
    prodPrice = widget.data.productPrice;
    super.initState();
  }

  void addQuan() {
    setState(() {
      quan += 1;
      prodPrice += widget.data.productPrice;
    });
  }

  void minusQuan() {
    setState(() {
      if (quan > 1) {
        quan -= 1;
        prodPrice = prodPrice - widget.data.productPrice;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.150,
        child: Card(
          elevation: 5,
          color: Colors.white,
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.016),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(10.0), //<-- SEE HERE
          ),
          child: Row(
            children: [
  //----------------------Image Container--------------------//
              Container(
                width: MediaQuery.of(context).size.width*0.20,
                height: MediaQuery.of(context).size.height*0.150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white38,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.allcarepharmacy.ie/media/catalog/product/cache/30ef0a5a34180d98365b16f59a39bc5a/o/t/otc_-_470_x_470_22__1.png"))),
              ),
              
              
              Expanded(
                  child: Container(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

  //----------------------Title and Icon Row--------------------//
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.010),
                                // color: Colors.blue,
                                child: Text(
                                  widget.data.productTitle,
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height*0.024,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width*0.12,
                              height: MediaQuery.of(context).size.height*0.050,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                color: Color.fromRGBO(255, 192, 203, 1),
                              ),
                              child: IconButton(
                                  icon: Icon(Icons.delete, color: Colors.blue, size:MediaQuery.of(context).size.height*0.030),
                                  onPressed: () => removeItem(widget.data.id)),
                            ),
                          ]),
                    
  //----------------------Price and quantity--------------------//
                      Container(
                        padding: EdgeInsets.only(right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                child: Text(
                              "\$${prodPrice.toStringAsFixed(2)}",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width*0.048,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 24, 70, 205),
                              ),
                            )),

                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: minusQuan,
                                    icon: Icon(Icons.remove_circle,
                                        size: MediaQuery.of(context).size.height*0.040,
                                        color: Colors.white,
                                        shadows: <Shadow>[
                                          Shadow(
                                              color: Colors.grey.shade600,
                                              offset: Offset.fromDirection(22, 1),
                                              blurRadius: 5.0)
                                        ]),
                                    // color: Colors.cyan,
                                  ),
                                  // Padding(
                                    // padding: const EdgeInsets.only(left: 5.0, right: 3.0),
                                    // child: 
                                    Text('$quan', style: TextStyle(fontWeight: FontWeight.w700),),
                                  // ),
                                  IconButton(
                                    onPressed: addQuan,
                                    icon: Icon(Icons.add_circle_rounded,
                                        size: MediaQuery.of(context).size.height*0.040,
                                        color: Colors.white,
                                        shadows: <Shadow>[
                                          Shadow(
                                              color: Colors.grey.shade600,
                                              offset: Offset.fromDirection(22, 1),
                                              blurRadius: 5.0)
                                        ]),
                                    // color: Colors.cyan,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ))
            ],
          ),
        ));
  }
}
