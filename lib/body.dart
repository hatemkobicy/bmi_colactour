// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, unused_local_variable

import 'dart:math';

import 'package:bmi/constants.dart';
import 'package:bmi/screen/bmi_resualt.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool ismale = true;
  double height = 120;
  int weight = 85;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/catsss (5).jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            ismale = true;
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ismale ? Color.fromARGB(94, 11, 10, 40) : kPrimaryColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.male,
                              size: 120,
                              color: Colors.blue,
                            ),
                            SizedBox(),
                            Text(
                              "MALE",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                fontFamily: kfont,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ismale ? kPrimaryColor : Color.fromARGB(94, 11, 10, 40),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.female,
                              size: 120,
                              color: Colors.red,
                            ),
                            SizedBox(),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: kfont,
                                  fontWeight: FontWeight.bold,
                                  color: kTextColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Height".toUpperCase(),
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: kfont,
                          fontWeight: FontWeight.bold,
                          color: kTextColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "${height.round()}",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: kfont,
                              fontWeight: FontWeight.w900,
                              color: kTextColor),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: kfont,
                              fontWeight: FontWeight.w900,
                              color: ksecandColor),
                        ),
                      ],
                    ),
                    Slider(
                        inactiveColor: kBackgroundColor,
                        activeColor: ksecandColor,
                        thumbColor: ksecandColor,
                        value: height,
                        max: 220.0,
                        min: 120,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "weight".toUpperCase(),
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: kfont,
                                fontWeight: FontWeight.bold,
                                color: kTextColor),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: kfont,
                                fontWeight: FontWeight.w900,
                                color: kTextColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'weight-',
                                backgroundColor: ksecandColor,
                                foregroundColor: kTextColor,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                foregroundColor: kTextColor,
                                heroTag: 'weight+',
                                backgroundColor: ksecandColor,
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "age".toUpperCase(),
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: kfont,
                                fontWeight: FontWeight.bold,
                                color: kTextColor),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: kfont,
                                fontWeight: FontWeight.w900,
                                color: kTextColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                foregroundColor: kTextColor,
                                heroTag: 'age-',
                                backgroundColor: ksecandColor,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                foregroundColor: kTextColor,
                                heroTag: 'age+',
                                backgroundColor: ksecandColor,
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: kPrimaryColor,
            ),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: MaterialButton(
              height: 50.0,
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  color: kTextColor,
                  fontFamily: kfont,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              onPressed: () {
                double resualt = weight / pow(height / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => BmiResualt(
                              resualt: resualt.round(),
                              age: age,
                              ismale: ismale,
                            ))));
              },
            ),
          )
        ],
      ),
    );
  }
}
