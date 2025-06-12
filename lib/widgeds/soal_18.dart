import "package:flutter/material.dart";

class soal_18 extends StatelessWidget {
  const soal_18({
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
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
              margin: EdgeInsets.all(5),
              height: 200,
              color: index % 2 == 0 ? Colors.blue : Colors.amber,
            ),
            Center(
              child: Text("Hello $index", style: TextStyle(fontSize: 20)),
            )
            ]
          );
        },
      ),
    );
  }
}