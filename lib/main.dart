import "package:flutter/material.dart";
import "package:my_first_flutter/widgets/kotak_warna.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Application", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              KotakWarna(text: "Merah", warna: Colors.red),
              KotakWarna(text: "Kuning", warna: Colors.amber),
              KotakWarna(text: "Biru", warna: Colors.blue),
              KotakWarna(text: "Hijau", warna: Colors.green),
              KotakWarna(text: "Ungu", warna: Colors.purple),
              KotakWarna(text: "Coklat", warna: Colors.brown),
              KotakWarna(text: "Hitam", warna: Colors.black),
              KotakWarna(text: "Putih", warna: Colors.white),
            ]
          ),
        ),
      )
    );
  }
}

