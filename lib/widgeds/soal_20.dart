import "package:flutter/material.dart";

class soal_20 extends StatelessWidget {
  const soal_20({
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
      body: Stack(
        
        children: [
          Container(
            color: Colors.green,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.red,
            height: 225,
            width: 225,
          ),
          Container(
            color: Colors.purple,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.amber,
            height: 175,
            width: 175,
          ),
          Container(
            color: Colors.blue,
            height: 150,
            width: 150,
          ),
        ],
      ),
    );
  }
}