import "package:flutter/material.dart";

class soal_24 extends StatelessWidget {
  const soal_24({
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
      body: Column(
        children: [ 
          Container(
          child: 
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 20,
                children: List.generate(10, (index) =>
                  Container(
                    width: 100,
                    height: 100,
                    color: index % 2 == 0 ? Colors.blue : Colors.amber,
                  )
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) =>
              Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      margin: EdgeInsets.all(20),
                      color: index % 2 == 0 ? Colors.blue : Colors.amber,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text("Hello ${index + 1}",
                        style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    )
                  ],
                ),
            )
            )
          ],
        ),
      );
  }
}