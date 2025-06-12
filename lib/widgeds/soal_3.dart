import "package:flutter/material.dart";

class soal_3 extends StatelessWidget {
  const soal_3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: FlutterLogo(
          size: 200,
        ),
      )
    );
  }
}