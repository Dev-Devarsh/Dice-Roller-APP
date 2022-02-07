import 'package:flutter/material.dart';
import 'HomePage.dart';
//update pubspec.ymal file to add images 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      title: 'Dice roller App',
      home: HomePage(),
    );
  }
}



