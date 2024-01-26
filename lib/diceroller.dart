import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int current_value = 2;
  diceroll() {
    setState(() {
      current_value = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$current_value.png',
          width: 200,
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
            diceroll();
          },
          child: Text(
            "Roll Dice",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
      ],
    );
  }
}
