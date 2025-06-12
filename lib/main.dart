import "package:flutter/material.dart";
import "package:my_first_flutter/widgeds/soal_1.dart";
import "package:my_first_flutter/widgeds/soal_2.dart";
import "package:my_first_flutter/widgeds/soal_3.dart";
import "package:my_first_flutter/widgeds/soal_4.dart";
import "package:my_first_flutter/widgeds/soal_5.dart";
import "package:my_first_flutter/widgeds/soal_6.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: soal_6()
    );
  }
}

