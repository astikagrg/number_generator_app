import 'package:flutter/material.dart';
import 'dart:math';

class NumberGameView extends StatefulWidget {
  const NumberGameView({super.key});

  @override
  State<NumberGameView> createState() => _NumberGameViewState();
}

class RanNum {
  int generate() {
    var num = Random().nextInt(90);
    var num2 = Random().nextInt(90);

    return num, num2;
  }
}

class clicked {
  click(counter, number1, number2) {
    if (counter >= 10) {
      Row(
        children: const [Text('Your Score')],
      );
    }
  }
}

class _NumberGameViewState extends State<NumberGameView> {
  var counter = 0;
  int number1 = 0;
  var number2 = 0;
  var rightans = 0;
  var wrongans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Game'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    number1 = RanNum().generate();
                    counter = counter + 1;
                    setState(() {});
                  },
                  child: Text('1st number: ${number1.toString()}'),
                ),
                ElevatedButton(
                  onPressed: () {
                    number2 = RanNum().generate();
                    counter = counter + 1;
                    setState(() {});
                    clicked().click(counter, number1, number2);
                  },
                  child: Text('2nd number: ${number2.toString()}'),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Times clicked: $counter')],
          ),
        ],
      ),
    );
  }
}
