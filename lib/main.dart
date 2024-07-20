import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: QuizApp(),
  ));
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
    ''
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
            Container(
              child: Material(
                child: InkWell(
                  splashColor: Colors.green,
                  onTap: () {},
                  child: Container(
                    width: 335,
                    height: 75,
                    child: Text(
                      'Туура',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white10,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                color: Colors.teal,
              ),
              color: Colors.orangeAccent,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check,
                    color: Colors.greenAccent,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
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
