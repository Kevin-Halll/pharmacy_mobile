import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class Banner1 extends StatelessWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: Colors.pink, width: 2),
                    color: const Color(0xFFE7F1F8)),
                width: double.maxFinite,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get Free',
                                style: TextStyle(
                                    color: thirdBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    decoration: TextDecoration.none, fontFamily: 'Poppins'),
                              ),
                              Text(
                                'Consultation from \nour in-house pharmasist',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal, fontFamily: "Poppins"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: thirdBlue,
                              ),
                              Text(
                                '(888) 888 - 8888',
                                style: TextStyle(
                                    color: thirdBlue,
                                    fontSize: 16,
                                    decoration: TextDecoration.none),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Image.asset('/images/doctor.png',
                    width: 150, height: 180, alignment: Alignment.bottomLeft),
              ],
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: Colors.pink, width: 2),
                    color: const Color(0xFFE7F1F8)),
                width: double.maxFinite,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15,  0, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '50% OFF!',
                                style: TextStyle(
                                    color: thirdBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                'Your prescriptions when you\nbecome a lifetime member',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                          ElevatedButton(onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(thirdBlue),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ))
                              ),
                              
                              child: Text('Become a Member')),
                          // TextButton(onPressed: (){}, child: Text('Become a Memeber'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 35,
                ),
                Image.asset('/images/opened-bottle-of-pills.png',
                    width: 150, height: 180, alignment: Alignment.bottomLeft),
              ],
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: Colors.pink, width: 2),
                    color: const Color(0xFFE7F1F8)),
                width: double.maxFinite,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'We Deliver',
                                style: TextStyle(
                                    color: thirdBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    decoration: TextDecoration.none),
                              ),
                              Container(
                                width: 170,
                                child: Text(
                                  'Islandwide delivery service and free delivery with your lifetime membership',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal),
                                  // overflow: TextOverflow.ellipsis,
                                  // maxLines: 4,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset('/images/delivery-man.png', height: 175, alignment: Alignment.bottomLeft),
              ],
            ),
          ],
        )
      ],
    );
  }
}
