import 'package:flutter/material.dart';
import 'package:kurs2_sabak04/dice_page.dart';
import 'dice_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurs 2_Sabak 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DicePage(),
    );
  }
}
