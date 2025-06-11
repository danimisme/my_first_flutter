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
          // Image Provider :
          // 1. Asset Image
          // --> gambar yang ada pada folder project
          // --> perlu daftar di pubspec.yaml
          child: Image(image: AssetImage("assets/unnamed.png") ),
        )
      )
    );
  }
}