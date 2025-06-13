import "package:flutter/material.dart";
class DropdownPage extends StatefulWidget {

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  final List data = [
    {
      "judul" : "Pilihan pertama",
      "data" : 1
    },
    {
      "judul" : "Pilihan kedua",
      "data" : 2
    },
    {
      "judul" : "Pilihan ketiga",
      "data" : 3
    },
    {
      "judul" : "Pilihan keempat",
      "data" : 4
    },
    {
      "judul" : "Pilihan kelima",
      "data" : 5
    }
  ];

  late int dataAwal ;

  @override
  void initState() {
    // TODO: implement initState
    dataAwal = data[0]['data'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Example", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
            child: DropdownButton<int>(
              value: dataAwal,
              items: data.map((item) =>
                DropdownMenuItem(
                  child: Text("${item['judul']}"),
                  value: item['data'] as int,
                  )).toList(), 
                  onChanged: (value) {
                    setState(() {
                    dataAwal = value!;
                    });
                  }),
            )),
    );
  }
}