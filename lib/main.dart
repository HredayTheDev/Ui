import 'package:appbar_design/screens/customDrawer.dart';
import 'package:appbar_design/screens/person.dart';
import 'package:appbar_design/screens/shopping.dart';
import 'package:appbar_design/screens/travel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text(
          "This is Appbar",
          style:
              TextStyle(color: Colors.blue[150], fontWeight: FontWeight.bold),
        ),
        elevation: 15,
        shadowColor: Colors.amberAccent,
        //    toolbarHeight: 50,
        // toolbarOpacity: .9,
        //     leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () { Scaffold.of(context).openDrawer(); },
        //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        centerTitle: true,
        backgroundColor: Colors.purple[200],

        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.person,
                color: Colors.amber[200],
              ),
              child: Text(
                "Person",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.card_travel,
                color: Colors.amber[200],
              ),
              child: Text(
                "Card Travel",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.amber[200],
              ),
              child: Text(
                "Shopping Cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Center(child: Text("Person",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),)),
          //  Center(child: Text("Card Tralvel",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),)),
          //   Center(child: Text("Shopping Cart",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))

          Center(child: Person()),
          Center(child: Travel()),
          Center(child: Shopping()),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: Image.asset(
                        "assets/add6.png",
                        fit: BoxFit.cover,
                        height: 110,
                        width: 110,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Hello Mr. Hreday Sagar Chakraborty",
                        style: TextStyle(color: Colors.black87),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.greenAccent, Colors.orangeAccent])),
            ),

            // ListTile(
            //   title: Text("This is item 1"),
            //   subtitle: Text(" This is subTitle 1"),
            // ),
            CustomDrawer(Icons.person, 'Profile', () {}),
            SizedBox(
              height: 10,
            ),
            CustomDrawer(Icons.shopping_cart, "Shopping Cart", () {}),
            SizedBox(
              height: 10,
            ),
            CustomDrawer(Icons.card_travel, "Card Travel", () {}),

            // ListTile(
            //   title: Text("This is item 1"),
            //   subtitle: Text(" This is subTitle 1"),
            // )

            // ,ListTile(
            //   title: Text("This is item 1"),
            //   subtitle: Text(" This is subTitle 1"),
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[200],
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text(
              "Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            icon: Icon(Icons.person),
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            title: Text(
              "Card Travel",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            backgroundColor: Colors.green,
            icon: Icon(Icons.card_travel),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Shopping Cart",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            backgroundColor: Colors.blue,
            icon: Icon(Icons.shopping_cart),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    ));
  }
}
