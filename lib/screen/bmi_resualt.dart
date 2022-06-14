// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables

import 'package:bmi/screen/whatsmean.dart';
import 'package:bmi/screen/whatsmean_arabic.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class BmiResualt extends StatelessWidget {
  final int resualt;
  final bool ismale;
  final int age;

  BmiResualt({
    @required this.resualt,
    @required this.ismale,
    @required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Resualt",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: kfont,
              color: kTextColor),
          textAlign: TextAlign.center,
        ),
        foregroundColor: kTextColor,
        backgroundColor: ksecandColor,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/catsss (5).jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(120, 25, 19, 15),
              borderRadius: BorderRadius.circular(35),
            ),
            height: 600,
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Gender : ${ismale ? 'Male' : 'Female'}',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfont,
                      color: kTextColor),
                ),
                Text(
                  'Result : $resualt',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfont,
                      color: kTextColor),
                ),
                Text(
                  'Age : $age',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfont,
                      color: kTextColor),
                ),
                SizedBox(
                  height: 120,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ksecandColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  margin: EdgeInsets.all(10),
                  child: MaterialButton(
                    height: 50.0,
                    child: Text(
                      "What's Mean ?".toUpperCase(),
                      style: TextStyle(
                        color: kTextColor,
                        fontFamily: kfont,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Whatsmean())));
                    },
                  ),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: ksecandColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  margin: EdgeInsets.all(10),
                  child: MaterialButton(
                    height: 50.0,
                    child: Text(
                      "ماذا يعني ؟".toUpperCase(),
                      style: TextStyle(
                        color: kTextColor,
                        fontFamily: kfont,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Whatsmean_arabic())));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
