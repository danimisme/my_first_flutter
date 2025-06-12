import "package:flutter/material.dart";

class soal_17 extends StatelessWidget {
  const soal_17({
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
      body: GridView.builder(
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            color: index % 2 == 0 ? Colors.blue : Colors.amber,
            child: Center(
              child: Text("Item ${index + 1}", style: TextStyle(fontSize: 20, color: Colors.white))
            ),
          );
        },
      ),
    );
  }
}