import "package:flutter/material.dart";

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(onPressed: (){
            showModalBottomSheet(
              context: context, 
              isDismissible: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),
              builder: (context) => SizedBox(
              height: 400,
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      print("Photo tapped");
                    },
                    leading: Icon(Icons.photo),
                    title: Text("Photo"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Music tapped");
                    },
                    leading: Icon(Icons.music_note),
                    title: Text("Music"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Video tapped");
                    },
                    leading: Icon(Icons.video_collection),
                    title: Text("Video"),
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text("Share"),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    leading: Icon(Icons.cancel),
                    title: Text("Cancel"),
                  ),
                ]
              )
            ));
          }, child: Text("SHOW BOTTOM SHEET"))
        )
      )
    );
  }
}