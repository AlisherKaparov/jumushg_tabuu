import 'package:flutter/material.dart';

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
  bool? surooButtu = false;
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

    if (quizBrain.suroonuAlypKel() == '') {
      surooButtu = true;
      icons = [];
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
              child: Text(quizBrain.suroonuAlypKel().toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            surooButtu == true
                ? AlertDialog(
                    title: const Text('Suroo buttu azamatsyz!'),
                    content: const SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text('Tuura joop (), Kata joop ()'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Kaira bashta'),
                        onPressed: () {
                          setState(() {});
                          quizBrain.suroonuAlypKel();
                          surooButtu = false;
                          quizBrain.katarNomeri = 0;
                          icons = [];
                        },
                      ),
                    ],
                  )
                : Column(
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
                      const SizedBox(
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
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
