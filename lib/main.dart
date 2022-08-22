import 'package:flutter/material.dart';
import 'package:vaccine1/home.dart';
import 'package:vaccine1/results.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => MyHome(),
      'result': (context) => MyResult()
    },


  ));
}

