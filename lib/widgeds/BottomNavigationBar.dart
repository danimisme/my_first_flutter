import "package:flutter/material.dart";

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  late int index;

  List showWidgets = [
    Center(child: Text("Home Page")),
    Center(child: Text("Cart Page")),
    Center(child: Text("Profile Page")),
  ];


  void initState() {
    index = 0; // Initialize the index to the first item
    super.initState();
    // You can initialize any data or state here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar Example"),
      ),
      body: showWidgets[index], // Display the widget based on the current index
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: index,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        onTap: (value) {
          setState(() {
            index = value; // Update the index when an item is tapped
          });
        },
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.shopping_cart_checkout),
        //   label: "Cart",
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        )
      ]),
    );
  }
}