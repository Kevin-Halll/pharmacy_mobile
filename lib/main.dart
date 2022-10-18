import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pharmacy_mobile/Components/login/login.dart';
import 'package:pharmacy_mobile/Components/product-details/product_details.dart';
import 'package:pharmacy_mobile/Components/registration/registration.dart';
import 'package:pharmacy_mobile/widgets/inputfields.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: UserProfile(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  _searchController() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        //<------------ start of appbar section ------------>
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Ink(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(231, 241, 248, 10),
                  borderRadius: BorderRadius.circular(7.32)),
              height: 30,
              width: 30,
              child: const Icon(
                Icons.menu,
                size: 28,
                color: Color.fromRGBO(170, 170, 170, 100),
              ),
            ),
          ),
          title: Center(
            child: Text('Hello Janet',
                style: TextStyle(color: Colors.black, fontSize: 14)),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Ink(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(231, 241, 248, 10),
                    borderRadius: BorderRadius.circular(7.32)),
                height: 30,
                width: 30,
                child: const Icon(
                  Icons.person,
                  size: 28,
                  color: Color.fromRGBO(170, 170, 170, 100),
                ),
              ),
            ),
          ],
        ),
        //<------------ end of appbar section ------------>

        //<------------ hamburger menu icon ------------>
        drawer: const HamburgerMenu(),

        //<------------ start of body section ------------>
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //<------------ search and filter section ------------>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,
                            color: Color.fromRGBO(121, 116, 116, 10)),
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(121, 116, 116, 10)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        fillColor: Color.fromRGBO(231, 241, 248, 10),
                        filled: true,
                        hintText: 'Search',
                        isDense: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 241, 248, 10),
                        borderRadius: BorderRadius.circular(7.32)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt,
                        color: Color.fromRGBO(170, 170, 170, 100),
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),

              //<------------ slider section ------------>
              Row(),

              //<------------ shop by category ------------>
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(231, 241, 248, 10),
                      borderRadius: BorderRadius.circular(7.32)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shop by Category',
                              style: TextStyle(
                                  color: Color.fromARGB(156, 32, 32, 32),
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'SEE ALL',
                            style: TextStyle(
                                color: Color.fromRGBO(43, 48, 180, 100),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [_categories()],
                      // )
                      Container(
                        height: 170,
                        child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return _categories();
                            }),
                      )
                    ],
                  )),

              //<------------ specail offers ------------>
            ],
          ),
        ));
  }
}

Widget _categories() {
  return Container(
    child: Column(
      children: [
        CircleAvatar(
          radius: 32.0,
          // backgroundImage:
          //     AssetImage('assets/images/sign.png'),
          backgroundColor: Colors.blue.shade50,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Orthopaedic',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
    margin: EdgeInsets.fromLTRB(6, 20, 6, 4),
    width: 100,
    padding: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(7.32)),
  );
}

class HamburgerMenu extends StatefulWidget {
  const HamburgerMenu({super.key});

  @override
  State<HamburgerMenu> createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  //<------------ variables to be substituted with data from database ------------>
  String _firstName = 'Janet';
  String _lastName = 'Williams';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //<------------ menu information section ------------>
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('$_firstName ' '$_lastName'),
            accountEmail: Text("janet977@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "${_firstName[0]}",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),

          //<------------  list tile has each section ------------>
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              // Navigator.pop(context);
            },
          ),

          //<------------  list tile has each section ------------>
          ListTile(
            leading: Icon(
              Icons.medication,
            ),
            title: const Text('Medication Tracker'),
            onTap: () {
              // Navigator.pop(context);
            },
          ),

          //<------------  list tile has each section ------------>
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: const Text('Settings'),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
