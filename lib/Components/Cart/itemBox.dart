import 'package:flutter/material.dart';

class ItemBox extends StatefulWidget {
  const ItemBox({super.key});

  @override
  State<ItemBox> createState() => _ItemBoxState();
}

class _ItemBoxState extends State<ItemBox> {

int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      width: 370,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 7), // changes position of shadow
            )
          ]),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(children: [
        //product image con
        Container(
          height: 90.0,
          width: 90.0,
          decoration: BoxDecoration(
              // used to create the background Image
              borderRadius: BorderRadius.circular(5), //gives the image a border
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(
                    // "images/spiritedAway.webp",
                    "https://www.allcarepharmacy.ie/media/catalog/product/cache/30ef0a5a34180d98365b16f59a39bc5a/o/t/otc_-_470_x_470_22__1.png",
                  ),
                  fit: BoxFit.fitHeight)),
        ),

        //product details con
        Container(
          height: 90.0,
          // padding:EdgeInsets.symmetric(vertical: 15, horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 260.0,
                // color: Colors.amber,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          // color: Colors.blue,
                          child: Text(
                            "Panadol 500mg",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.pink.shade200,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(10),
                              )),
                          child: Icon(Icons.delete,
                              size: 20, color: Colors.blue.shade700))
                    ]),
              ),
              Container(
                width: 250,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(
                        "\$560.00",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      )
                      ),
                      // SizedBox(width: 200),
                      Container(
                          child: Row(
                        children: [
                          IconButton(
                            onPressed: _decrementCounter,
                            icon: Icon(Icons.remove_circle_rounded,
                                size: 20,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.grey.shade600,
                                      offset: Offset.fromDirection(-22, -1),
                                      blurRadius: 5.0)
                                ]),
                            // color: Colors.cyan,
                          ),
                          Text('$_counter'),
                          IconButton(
                            onPressed: _incrementCounter,
                            icon: Icon(Icons.add_circle_rounded,
                                size: 20,
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
                      ))
                    ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
