import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(size: 20),
          backgroundColor: Colors.blue,
          title: Text("AppBar"),
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          actions: [
            IconButton(onPressed: (){print("Klik more");}, icon: Icon(Icons.more_vert , color: Colors.white)),
          ],
        ),
        body: Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 50,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            )
          ),
        )
      )
    );
  }
}