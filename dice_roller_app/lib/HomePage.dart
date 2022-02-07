// ignore_for_file: prefer_const_constructors, dead_code, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  late AssetImage diceimage; // use "late" keyword to assign a iamage variable
  late AssetImage diceimage1;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage1 = one;
    });
  }

  void rolldice() {
    int random = (1 +
        Random().nextInt(
            6)); // it gives random values between 0 to 5 , values starts form 0 to 5 , but we want to values between 1 to 6 thats why we added  "1+"
    int random1 = (1 +
        Random().nextInt(
            6)); // it gives random values between 0 to 5 , values starts form 0 to 5 , but we want to values between 1 to 6 thats why we added  "1+"
    late AssetImage newimage1; // use "late" keyword to assign a iamage variable
    late AssetImage newimage; // use "late" keyword to assign a iamage variable

    switch (random) {
      case 1:
        newimage = one;
        break;
      case 2:
        newimage = two;
        break;
      case 3:
        newimage = three;
        break;
      case 4:
        newimage = four;
        break;
      case 5:
        newimage = five;
        break;
      case 6:
        newimage = six;
        break;
    }

    switch (random1) {
      case 1:
        newimage1 = one;
        break;
      case 2:
        newimage1 = two;
        break;
      case 3:
        newimage1 = three;
        break;
      case 4:
        newimage1 = four;
        break;
      case 5:
        newimage1 = five;
        break;
      case 6:
        newimage1 = six;
        break;
    }
    setState(() {
      diceimage = newimage;
      diceimage1 = newimage1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dice roller'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[   
                Image(
                  image: diceimage1,
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(width: 50), // or use 2 containers and put single image widget in each other and give padding individual container , 
                Image(
                  image: diceimage,
                  width: 100.0,
                  height: 100.0,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
              child: RaisedButton(
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                child: Text(
                  'roll the dice!!',
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: rolldice,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
