import "package:flutter/material.dart";

class soal_16 extends StatelessWidget {
  const soal_16({
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
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: 
            List.generate(20, (index) => 
              Container(
                width: 100,
                height: 100,
                color: index % 2 == 0 ? Colors.blue : Colors.amber,
                child: Center(
                  child: Text("Item ${index + 1}", style: TextStyle(fontSize: 30, color: Colors.white))
                )
              )
            )
          ,
        )
      )
    );
  }
}