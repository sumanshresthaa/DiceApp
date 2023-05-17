import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;

  void changeDiceNumber(String side) {
    Random random = Random();
    int randomNumberLeft = random.nextInt(6) + 1;
    int randomNumberRight = random.nextInt(6) + 1;

    setState(() {
      if (side == "left") {
        leftDiceNumber = randomNumberLeft;
      } else {
        rightDiceNumber = randomNumberRight;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicee'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  changeDiceNumber("left");
                },
                child: Image.asset(
                  'assets/dice$leftDiceNumber.png',
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  changeDiceNumber("right");
                },
                child: Image.asset(
                  'assets/dice$rightDiceNumber.png',
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}



//Stateless - state change hudaina 

//Stateful - state change huncha




//State - the way things are 