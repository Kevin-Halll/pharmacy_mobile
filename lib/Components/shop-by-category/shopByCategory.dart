import 'package:pharmacy_mobile/constants/constants.dart';
import 'package:pharmacy_mobile/models/category.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_mobile/helpers/utils.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlue,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // _key.currentState!.openDrawer();
                    Navigator.pushNamed(context, '/user');
                  },
                  icon: Ink(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.32)),
                    // height: 30,
                    // width: 30,
                    child: const Icon(
                      Icons.arrow_back,
                      // size: 28,
                      color: Color.fromRGBO(170, 170, 170, 100),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            // <--------------- header section --------------->
            Text(
              'Shop by Categories',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),

// <--------------- grid that displays items in a grid view --------------->
            GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(20),
                // crossAxisSpacing: 5,
                // mainAxisSpacing: 1,
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                children:

                    // <--------------- list generated from list called categories --------------->
                    List.generate(Categories.length, (index) {
                      return GestureDetector(
                        onTap: (){},
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: AssetImage('assets/images/orthopedic.png'),
                                backgroundColor: Colors.blue.shade50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Orthopaedic',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.fromLTRB(6, 20, 6, 4),
                          width: 100,
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(7.32)),
                        ),
                      );
                  // return Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(12)),
                  //     color: Colors.white,
                  //   ),
                  //   padding: const EdgeInsets.all(10),
                  //   child: Column(
                  //     children: [
                  //       const CircleAvatar(
                  //           backgroundImage:
                  //               NetworkImage('Categories[index].img')),
                  //       TextButton(
                  //         onPressed: () {},
                  //         child: Text(Categories[index].name,
                  //             style: TextStyle(fontWeight: FontWeight.bold)),
                  //       ),
                  //     ],
                  //   ),
                  // );
                })),
          ],
        ),
      ),
    );
  }
}
