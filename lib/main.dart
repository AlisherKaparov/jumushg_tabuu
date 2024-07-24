import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatelessWidget {
  QuizApp({Key? key}) : super(key: key);
  List<String> shaardynAttary = [
    'Batken',
    'Osh',
    'Chuy',
    'Naryn',
    'Jalal-Abat',
    'Talas',
    'Yssyk-Kol',
  ];
  List<int> sany = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff363636),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Кыргызстанда 7 область бар ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            TuuraIcon(
              text: 'Tyypa',
              color: Colors.purple,
              splashColor: Colors.yellow,
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            TuuraIcon(
              text: 'Tyypa эмес',
              color: Colors.green,
              splashColor: Colors.red,
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check,
                    color: Colors.greenAccent,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    color: Colors.greenAccent,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TuuraIcon extends StatelessWidget {
  TuuraIcon(
      {Key? key,
      required this.color,
      required this.text,
      required this.onTap,
      required this.splashColor})
      : super(key: key);
  Color color;
  Color splashColor;
  String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: InkWell(
          splashColor: splashColor,
          onTap: () {},
          child: Container(
            width: 335,
            height: 75,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        color: color,
      ),
      color: Colors.orangeAccent,
    );
  }
}
