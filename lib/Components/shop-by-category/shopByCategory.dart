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
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            // <--------------- header section --------------->
            Text(
              'Shop by Categories',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),

// <--------------- grid that displays items in a grid view --------------->
            GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 22,
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                children:

                    // <--------------- list generated from list called categories --------------->
                    List.generate(Categories.length, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const CircleAvatar(
                            backgroundImage:
                                NetworkImage('Categories[index].img')),
                        TextButton(
                          onPressed: () {},
                          child: Text(Categories[index].name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
