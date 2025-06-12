import "package:flutter/material.dart";

class soal_12 extends StatelessWidget {
  const soal_12({
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
      body: Row(
        spacing: 20,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 20,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text("Hello", style: TextStyle(fontSize: 30, color: Colors.white))
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: Center(
                  child: Text("Hello", style: TextStyle(fontSize: 30))
                )
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 20,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: Center(
                  child: Text("Hello", style: TextStyle(fontSize: 30, color: Colors.white))
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text("Hello", style: TextStyle(fontSize: 30))
                )
              )
            ],
          ),
        ],
      )
    );
  }
}