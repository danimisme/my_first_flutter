import "dart:math";

import "package:flutter/material.dart";
import "package:my_first_flutter/widgets/kotak_warna.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

   final List<KotakWarna> allItems = List.generate(10, (index) => KotakWarna(text: "Kotak ke-$index", warna: Color.fromARGB(
    255,
    200 + Random().nextInt(256), // Random red value
    200 + Random().nextInt(256), // Random green value
    200 + Random().nextInt(256)  // Random blue value
   )));

   List<Map<String, dynamic>> data = List.generate(10, (index) => {
    "text": "Kontak ke-$index",
    "warna": Color.fromARGB(
        255,
        100 + Random().nextInt(256), // Random red value
        100 + Random().nextInt(256), // Random green value
        100 + Random().nextInt(256)  // Random blue value
      )
    }
  );
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Application", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) => KotakWarna(
          text: "kotak ke-$index",
          warna: Color.fromARGB(
            255,
            100 + Random().nextInt(200), // Random red value
            100 + Random().nextInt(200), // Random green value
            100 + Random().nextInt(200)  // Random blue value
          )
        )
        ),
      )
    );
  }
}

