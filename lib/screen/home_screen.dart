// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bmi/body.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, fontFamily: kfont,color: kTextColor),
          textAlign: TextAlign.center,
        ),
        foregroundColor: kTextColor,
        backgroundColor: ksecandColor,
      ),
      body: Body(),
    );
  }
}
