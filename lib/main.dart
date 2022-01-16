import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftdiceNumber = 1;
  int rightdiceNumber = 1;

  void ahmed (){
    setState(() {
      leftdiceNumber = Random().nextInt(6) + 1;
      rightdiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftdiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      leftdiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightdiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      rightdiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        ElevatedButton(
          onPressed: () {
            ahmed();
          },
          child: Text('Try you luck'),
        ),
        Card(child: Text('IF YOU GOT TWO NUMBERS FROM THE SAME TYPE YOU WINE '),)
      ],
    );
  }
}
