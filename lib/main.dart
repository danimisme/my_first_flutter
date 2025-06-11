import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App' ,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(child: Text("Hallo"))
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text("Hallo"))
            )
          ],
        ),
        )

      )
    );
  }
}