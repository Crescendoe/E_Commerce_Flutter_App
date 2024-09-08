import 'package:e_commerce/components/bottom_nav_bar.dart';
import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This selected index is used to control the bottom nav bar
  int _selectedIndex = 0;

  // Method to update the selected index
  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> _pages = [
    // Shop Page
    const ShopPage(),
    // Cart Page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/Nike.png',
                    height: 240,
                    width: 200,
                    color: Colors.white,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[900],
                  ),
                ),

                // Other Pages
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
