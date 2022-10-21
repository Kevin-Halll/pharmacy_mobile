import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pharmacy_mobile/Components/Cart/main.dart';
import 'package:pharmacy_mobile/Components/banner/banner.dart';
import 'package:pharmacy_mobile/Components/login/login.dart';
import 'package:pharmacy_mobile/Components/product-details/product_details.dart';
import 'package:pharmacy_mobile/Components/registration/registration.dart';
import 'package:pharmacy_mobile/Components/shop-by-category/shopByCategory.dart';
import 'package:pharmacy_mobile/widgets/inputfields.dart';
import 'Components/user-profile-page/userProfile.dart';
import 'package:pharmacy_mobile/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: (Colors.blueGrey),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: UserProfile(),
      // initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/register': (context) => Registration(),
        '/categories': (context) => Category(),
        '/user': (context) => UserProfile(),
      },
      // home: Banner1(),
    );
  }
}

