// ignore: unused_import
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.url});

  final String? url;

  @override
  State<StatefulWidget> createState() {
    return ProductDetailsScreenState();
  }
}

class ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavorited = false;
  bool isColored = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 51, 102, 1),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  child: widget.url == null
                      ? Placeholder()
                      : Image.network(
                          widget.url!,
                          height: screenHeight - 177,
                          width: screenWidth,
                          fit: BoxFit.fill,
                        ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                    icon: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(2000),
                      ),
                      child: isFavorited == true
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.blue,
                            )
                          : const Icon(
                              Icons.favorite_border,
                              color: Colors.blue,
                            ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isColored = !isColored;
                      });
                    },
                    icon: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2000),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: isColored ? Colors.green : Colors.transparent,
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Container(
            //   color: Colors.blue,
            //   height: 100,
            //   width: 100,
            // ),
            // Container(
            //   color: Colors.blue,
            //   height: 100,
            //   width: 100,
            // ),
            // Container(
            //   color: Colors.blue,
            //   height: 100,
            //   width: 100,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //currentIndex: _currentIndex,
        //onTap: _updateIndex,

        backgroundColor: const Color.fromRGBO(255, 51, 102, 1),
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
