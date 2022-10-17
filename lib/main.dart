import 'package:flutter/material.dart';
import 'package:pharmacy_mobile/Components/Cart/main.dart';
import 'package:pharmacy_mobile/Components/login/login.dart';
import 'package:pharmacy_mobile/Components/product-details/product_details.dart';
import 'package:pharmacy_mobile/Components/registration/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: (Colors.blueGrey),
      ),
      home: const CartPage(title: 'Flutter Demo Home Page'),
      // home: Registration(),
    );
  }
}
