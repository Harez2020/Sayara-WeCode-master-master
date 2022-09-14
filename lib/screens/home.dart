import 'package:flutter/material.dart';
import 'package:sayaranew/screens/product_detail.dart';
/* import 'package:sayarapp1/screens/main.dart';
import 'package:flutter/src/material/app_bar.dart'; */

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<String> images = [
    "assets/images/scenary.jpg",
    "assets/images/scenary_red.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/tree.jpg",
    "assets/images/scenary.jpg",
    "assets/images/scenary_red.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/tree.jpg",
  ];

  String url = 'https://sayara.online/img/app-screenshots/3.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 90, 5, 12),
              ),
              child: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ), */

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 90, 5, 12),
              ),
              child: Text(
                "Sayara App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),

/* child: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white,
              ), */

            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sell on Sayara'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Book your service'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Messages'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Favourites'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Account'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.details)),
        toolbarHeight: 80.0,
        // title: const Text("Sayara"),
        backgroundColor: const Color.fromRGBO(255, 51, 102, 1),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('to detail screen')),
          Divider(),

          InkWell(
            onTap: (() {

              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => ProductDetailsScreen(url: url,))));

            }),
            onDoubleTap: () {
              
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const ProductDetailsScreen(url: null,))));
            },
            child: Text(url),
          ),

          // GridView.count(
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 8,
          //     mainAxisSpacing: 8,
          //     padding: const EdgeInsets.fromLTRB(20, 80, 20, 40),
          //     childAspectRatio: 1,
          //      children: List.generate(100, (index) {
          //     // return Container()

          //     children: List.generate(100, (index) {
          //       return Container(
          //           decoration:
          //               BoxDecoration(border: Border.all(color: Colors.cyan)));
          //     }),
          //     children: ElevatedButton(
          //       child: const Text("product_detail.dart"),
          //       onPressed: () {},
          //     );
          //     ),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(255, 51, 102, 1),
        type: BottomNavigationBarType.fixed,
        //currentIndex: _currentIndex,
        //onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Booking",
            icon: Icon(Icons.book_online),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
