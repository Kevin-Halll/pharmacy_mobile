import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class Banner1 extends StatelessWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(color: Colors.pink, width: 2),
              color: const Color(0xFFE7F1F8)

            ),
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
                          Text('Get Free', style: TextStyle(color: thirdBlue, fontWeight: FontWeight.bold, fontSize: 25, decoration: TextDecoration.none),),
                          Text('Consultation from \nour in-house pharmasist', style: TextStyle(color: Colors.black,fontSize: 14, decoration: TextDecoration.none, fontWeight: FontWeight.normal),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone, color: thirdBlue,),
                          Text('(888) 888 - 8888', style: TextStyle(color: thirdBlue, fontSize: 16, decoration: TextDecoration.none),)
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
            SizedBox(width: 35,),
            Image.asset('/images/doctor.png',width: 150, height: 180,alignment: Alignment.bottomLeft),
          ],
        ),
      ],
    );
  }
}
