import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jumushg_tabuu/main.dart';
import 'package:jumushg_tabuu/third_page.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff363636),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Кыргызстанда Тоолор коп!',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 35,
                  color: Colors.amber,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Column(
              children: [
                TuuraIcon(
                  text: 'Tyypa',
                  color: Colors.blue,
                  splashColor: Colors.yellow,
                  onTap: () {
                    suroJooptuTeksher(
                      true,
                    );
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                TuuraIcon(
                  text: 'Tyypa эмес',
                  color: Colors.indigo,
                  splashColor: Colors.red,
                  onTap: () {
                    suroJooptuTeksher(false);
                  },
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdPage()),
            );
          },
          child: Text('Next page'),
        ),
      ),
    );
  }

  void suroJooptuTeksher(bool bool) {}
}
