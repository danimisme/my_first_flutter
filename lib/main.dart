import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar", style: TextStyle(color: Colors.white)), 
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                title: Text("Ini Judul"),
                content: Text("Ini adalah isi dari dialog yang ditampilkan. Anda dapat menambahkan lebih banyak informasi di sini."),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(), 
                    child: Text("Tutup"),
                  ),
                  TextButton(
                    onPressed: () => print("OK"), 
                    child: Text("OK")
                  )
                ],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              )
            );
          }, 
          child: Text("Show Dialog") 
        ),
      )
    );
  }
}