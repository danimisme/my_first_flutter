import "package:flutter/material.dart";
import "package:my_first_flutter/pages/profile.dart";

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Halaman Produk"),
            SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text("<<< Back")),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage())
                    );
                  }, child: Text("Next >>>"),)
                ],
              )
          ],
        ),
      )
    );
  }
}
