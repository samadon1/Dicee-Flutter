import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.amber,
                fontFamily: 'Pacifico',
                fontSize: 37.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Page(),
      ),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;
  RandomDice(){
    RandomDice(){}
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      // ignore: unnecessary_statements
                      leftDiceNumber = Random().nextInt(6) + 1;
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(image: AssetImage('images/dice$leftDiceNumber.png'),color: Colors.white,))),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  RandomDice(){}
                },
                  child: Image(image: AssetImage('images/dice$rightDiceNumber.png'), color: Colors.white,))),
        ],
      ),
    );
  }
}
