import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jumushg_tabuu/four_page.dart';
import 'package:jumushg_tabuu/quiz_brain.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool? isFinished = false;

  get icons => null;

  suroJooptuTeksher(bool okuuchununJoobu) {
    bool? itninJoobu = quizBrain.jooptuAlypKel()!;
    if (okuuchununJoobu == itninJoobu) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.blue,
          size: 50,
        ),
      );
    } else {
      icons.add(
        const Icon(
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Sary-Chelek.jpg'),
                fit: BoxFit.cover),
          ),
          child: const Center(
            child: Text(
              'Сары-Челеке куш келиниздер!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 65,
                fontWeight: FontWeight.bold,
                letterSpacing: sqrt1_2,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourPage()),
            );
          },
          child: Text('Aldyga gettik'),
        ),
      ),
    );
  }
}
