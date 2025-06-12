import "package:flutter/material.dart";

class soal_19 extends StatelessWidget {
  const soal_19({
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
        padding: EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index % 2 == 0 ? Colors.blue : Colors.amber,
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/200/300?random=$index"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(10),
                child: Text("Gambar ${index + 1}", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))),
            ),
            ]
          );
        },
      ),
    );
  }
}