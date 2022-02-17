// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Themepro.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
        builder: (context, child) {
         final themeProv = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Material App',
            themeMode: themeProv.themeMode,
            theme: MyTheme.lightTheme,
            darkTheme: MyTheme.darkTheme,
            home: Homepage(),
          );
        },
      );
}