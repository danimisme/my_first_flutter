import "package:flutter/material.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini Halaman Profil'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("<<< Back")),
          ],
        )
      ),
    );
  }
}