import "package:flutter/material.dart";

class Defaulttabcontroller extends StatelessWidget {
  const Defaulttabcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
            Tab(child: Text("Chats", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Status", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Calls", style: TextStyle(color: Colors.white))),
          ]),
          
        ),
        body: TabBarView(children: [
            Center(child: Text("Camera", style: TextStyle(fontSize: 24))),
            Center(child: Text("Chats", style: TextStyle(fontSize: 24))),
            Center(child: Text("Status", style: TextStyle(fontSize: 24))),
            Center(child: Text("Calls", style: TextStyle(fontSize: 24))),
          ])
      ),
    );
  }
}