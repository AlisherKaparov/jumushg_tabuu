import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/SaryChelek.jpg'),
                fit: BoxFit.cover),
          ),
          child: Center(
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
      ),
    );
  }
}
