import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var imgs = 'assets/images/5.jpg';
  var randnum = 1;
  void changeDice() {
    setState(() {
      randnum = Random().nextInt(6) + 1;
      imgs = 'assets/images/$randnum.jpg';
      print(randnum);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.deepPurple,
            Colors.deepOrange,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imgs),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: changeDice, child: Text('Press Me'))
            ],
          ),
        ),
      ),
    );
  }
}
