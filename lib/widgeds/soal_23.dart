import "package:flutter/material.dart";

class soal_23 extends StatelessWidget {
  const soal_23({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 210,
                    height: 210,
                    color: Colors.blue,
                  ),
                ),
                Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200 / 2),
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  )
                ),
              )],
            ),
            SizedBox(height: 20),
            Text(
              "Hello World",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}