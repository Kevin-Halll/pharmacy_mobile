import 'package:flutter/material.dart';
import 'package:pharmacy_mobile/Components/banner/banner.dart';
import 'package:pharmacy_mobile/helpers/utils.dart';
import '../../constants/constants.dart';

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
          titleSpacing: 10,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Ink(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(231, 241, 248, 10),
                  borderRadius: BorderRadius.circular(7.32)),
              // height: 30,
              // width: 30,
              child: const Icon(
                Icons.menu,
                // size: 28,
                color: Color.fromRGBO(170, 170, 170, 100),
              ),
            ),
          ),
          title: Center(
            child: Text('Hello Janet',
                style: TextStyle(color: Colors.black, fontSize: 14)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Ink(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(231, 241, 248, 10),
                    borderRadius: BorderRadius.circular(7.32),
                  ),
                  height: 30,
                  width: 30,
                  child: const Icon(
                    Icons.person,
                    size: 28.0,
                    color: Color.fromRGBO(170, 170, 170, 100),
                  ),
                ),
              ),
            ),
          ],
        ),
        //<------------ end of appbar section ------------>

        //<------------ hamburger menu icon ------------>
        drawer: const HamburgerMenu(),

        //<------------ start of body section ------------>
        body: SingleChildScrollView(
          child: Container(
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
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(121, 116, 116, 10)),
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
                Container(height: 180, child: Banner1()),

                //<------------ shop by category ------------>
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: mainBlue,
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
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/categories');
                              },
                              child: Text(
                                'SEE ALL',
                                style: TextStyle(
                                    color: thirdBlue,
                                    fontWeight: FontWeight.bold),
                              ),
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
                              itemCount: 8,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return _categories(index);
                              }),
                        ),
                      ],
                    )),

                //<------------ specail offers ------------>
                Offers(),
              ],
            ),
          ),
        ));
  }
}

Widget _categories(int index) {
  return Container(
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
          '${Categories[index].name}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Special Offers',
            style: TextStyle(
              color: thirdBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Products(),
        ],
      ),
    );
  }
}

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var item = [
    1,
    2,
    3,
    4,
    5,
  ];

  @override
  Widget build(BuildContext context) {
    // return Container();
    return GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 22,
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        children:

            // <--------------- list generated from list called categories --------------->
            List.generate(item.length, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: mainBlue,
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    // width: 130,
                    height: 120,
                    child: Image.asset(
                      'assets/images/paracetamol.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    )),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Paracetamaol 500mg',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("\$500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: thirdBlue)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: thirdBlue,
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        }));
  }
}
