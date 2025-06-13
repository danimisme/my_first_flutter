import "package:flutter/material.dart";

class TabControllerExample extends StatefulWidget {
  const TabControllerExample({super.key});

  @override
  State<TabControllerExample> createState() => _TabControllerExampleState();
}

class _TabControllerExampleState extends State<TabControllerExample> with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this );

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        bottom: TabBar(
          controller: tabC,
          tabs: [
          Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
          Tab(child: Text("Chats", style: TextStyle(color: Colors.white))),
          Tab(child: Text("Status", style: TextStyle(color: Colors.white))),
          Tab(child: Text("Calls", style: TextStyle(color: Colors.white))),
        ]),
        
      ),
      body: TabBarView(
          controller: tabC,
          children: [
          Center(child: Text("Camera", style: TextStyle(fontSize: 24))),
          Center(child: Text("Chats", style: TextStyle(fontSize: 24))),
          Center(child: Text("Status", style: TextStyle(fontSize: 24))),
          Center(child: Text("Calls", style: TextStyle(fontSize: 24))),
        ])
    );
  }
}