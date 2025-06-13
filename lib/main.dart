import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final List data = [
    "Data 1",
    "Data 2",
    "Data 3",
    "Data 4",
    "Data 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Example", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
            child: DropdownButton(
              items: data.map((item) =>
                DropdownMenuItem(
                  child: Text("Pilihan: $item"),
                  value: item,
                  )).toList(), 
                  onChanged: (value) {
                    print(value);
                  }),
            )),
    );
  }
}