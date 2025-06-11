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
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(child: Text("Hello World"))
          )
        ),
      )
    );
  }
}