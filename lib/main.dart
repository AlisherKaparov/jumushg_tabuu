import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumushg_tabuu/quiz_brain.dart';
import 'package:jumushg_tabuu/second_page.dart';

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

class QuizApp extends StatefulWidget {
  QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool? isFinished = false;
  suroJooptuTeksher(bool okuuchununJoobu) {
    bool? itninJoobu = quizBrain.jooptuAlypKel()!;
    if (okuuchununJoobu == itninJoobu) {
      icons.add(
        Icon(
          Icons.check,
          color: Colors.blue,
          size: 50,
        ),
      );
    } else {
      icons.add(
        Icon(
          Icons.close,
          color: Colors.red,
          size: 50,
        ),
      );
    } //suroJoop()
    quizBrain.suroonuOtkoz();
    quizBrain.suroonuAlypKel();

    if (quizBrain.suroonuAlypKel() == 'Suroo buttu') {
      isFinished = true;
    }
    setState(() {});
  }

  List<Widget> icons = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff363636),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(quizBrain.suroonuAlypKel() ?? 'Suroo buttu',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            if (isFinished!)
              TuuraIcon(
                color: Colors.red,
                text: "Kaira Bashta",
                onTap: () {},
                splashColor: Colors.grey,
              )
            else
              Column(
                children: [
                  TuuraIcon(
                    text: 'Tyypa',
                    color: Colors.purple,
                    splashColor: Colors.yellow,
                    onTap: () {
                      suroJooptuTeksher(
                        true,
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TuuraIcon(
                    text: 'Tyypa эмес',
                    color: Colors.green,
                    splashColor: Colors.red,
                    onTap: () {
                      suroJooptuTeksher(false);
                    },
                  ),
                ],
              ),
            Row(
              children: icons,
            ),
          ],
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: Text('Next page'),
        ),
      ),
    );
  }
}

class ChoiceIcon extends StatelessWidget {
  ChoiceIcon({
    super.key,
    required this.icon,
    required this.color,
  });
  final IconData? icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 65,
      color: color,
    );
  }
}

class TuuraIcon extends StatelessWidget {
  TuuraIcon({
    Key? key,
    required this.color,
    required this.text,
    required this.onTap,
    required this.splashColor,
  }) : super(key: key);
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
          onTap: onTap,
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

class SuroJoop {
  final String suro;
  final bool joop;

  SuroJoop({
    required this.suro,
    required this.joop,
  });
}
