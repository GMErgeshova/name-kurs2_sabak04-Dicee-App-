import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftCount = 1;
  int rightCount = 6;

  void throuDice() {
    //3 sekund kut
    //animatsiya
    leftCount = Random().nextInt(6) + 1;
    rightCount = Random().nextInt(6) + 1;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Daice app'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: throuDice,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 15.0),
                  child: Image.asset(
                    'assets/dice$leftCount.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: throuDice,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 30.0),
                  child: Image.asset(
                    'assets/dice$rightCount.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
