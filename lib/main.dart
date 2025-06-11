import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar:AppBar(
        title: Text("Aplikasi Pertamakuhh" , style: TextStyle(color: Colors.white) , ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
        body: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          )
        ),
      )
    );
  }
}