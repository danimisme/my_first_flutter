import "package:flutter/material.dart";

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Drawer")),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(24),
                height: 150,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  "Dashboard Menu",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Home tapped");
                      },
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Profile tapped");
                      },
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      onTap: () {
                        print("Menu Settings tapped");
                      },
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
