import 'package:flutter/material.dart';

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