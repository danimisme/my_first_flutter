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
          // child: Image(image: AssetImage("assets/unnamed.png") ),
          // 2. Network Image
          // --> gambar yang ada di internet
             child: Image(
              image: NetworkImage("https://images.unsplash.com/photo-1541823709867-1b206113eafd?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              )
        )
      )
    );
  }
}