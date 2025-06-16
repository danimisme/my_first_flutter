import "package:flutter/material.dart";
import "package:my_first_flutter/pages/product.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:  () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProductPage())
            );
          }, 
          child: Text("Next Page >>")
          )
      )
    );
  }
}
