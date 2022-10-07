import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  int _amount = 1;
  double _price = 20.50;
  bool _ifPriscribed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(231, 241, 248, 10),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Ink(
            decoration: BoxDecoration(
                color: Color.fromRGBO(245, 247, 249, 10),
                borderRadius: BorderRadius.circular(7.32)),
            height: 30,
            width: 30,
            child: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Ink(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 247, 249, 10),
                  borderRadius: BorderRadius.circular(7.32)),
              height: 30,
              width: 30,
              child: Icon(
                Icons.notifications_none_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Ink(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 247, 249, 10),
                  borderRadius: BorderRadius.circular(7.32)),
              height: 30,
              width: 30,
              child: Icon(
                Icons.favorite_outline_sharp,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: 264,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(231, 241, 248, 10)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/a7d4/5c26/c79b144e95cb5292e86e071882ff90ed?Expires=1665964800&Signature=Q-uIv7zFRWFCHgbrWK6-BZ1gd2YNE6fyU82A9EuxrC2m5lJCDOjeyazCAVJCuDY59bdG2R51as2VUFmIZbBTidz130FuwFXHQBAbe3gNGBc3VtFQD00SeEv4lA3WbX7kedFXo6cB0thUy7AhWN9IpKX0tnsybzYrEumReFn3WyhGOehbMLtwgM~3myFv0LeV5H8h1o-c1o79CcXLUrEV9wsCYVlGhwsU1upMX2K29So6DFPy5mpeRfqC0BmjU6fQgVnZm2~yi4E9k42WJNhha02k9DywwY8FH89N8Vnv9sZVosiKBRzWHd8q6lBE~ygjH1UbDY4bNFM5NFVcG4tShA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vitamin C',
                  style: TextStyle(
                      color: Color.fromRGBO(56, 55, 55, 10),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Drug',
                  style: TextStyle(
                      color: Color.fromRGBO(121, 116, 116, 10), fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Priscription Required',
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ $_price',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (_amount <= 1) {
                                _amount = 1;
                              }
                              _amount--;
                            });
                          },
                          icon: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.32),
                                border: Border.all(color: Colors.black)),
                            height: 24,
                            width: 24,
                            child: Icon(
                              Icons.remove,
                              size: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text('$_amount'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _amount++;
                            });
                          },
                          icon: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.32),
                                border: Border.all(color: Colors.black)),
                            height: 24,
                            width: 24,
                            child: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(27, 117, 188, 10),
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))
                      // NEW
                      ),
                  onPressed: () {},
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(65, 65, 65, 1)),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
