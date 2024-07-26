import 'package:jumushg_tabuu/main.dart';

class QuizBrain {
  int katarNomeri = 0;
  List<SuroJoop> suroJoop = [
    SuroJoop(
      suro: 'Кызгызстанда 7 область бар',
      joop: true,
    ),
    SuroJoop(
      suro: 'Кыргызстанда 60 район бар',
      joop: false,
    ),
    SuroJoop(
      suro: 'Кытай Кыргызстан менен чектешпейт',
      joop: false,
    ),
    SuroJoop(
      suro: 'Кыргызстан Россия менен чектешпейт',
      joop: true,
    ),
    SuroJoop(
      suro: 'Кытай Кыргызстандын жолдорун курат',
      joop: true,
    ),
    SuroJoop(
      suro: 'Кыргызстанда уйкучулар коп',
      joop: false,
    ),
  ];

  String? suroonuAlypKel() {
    if (katarNomeri < suroJoop.length) {
      return suroJoop[katarNomeri].suro;
    } else {
      'Suroo buttu';
    }
  }

  bool? jooptuAlypKel() {
    if (katarNomeri < suroJoop.length) {
      return suroJoop[katarNomeri].joop;
    }
  }

  suroonuOtkoz() {
    katarNomeri++;
  }
}

final QuizBrain quizBrain = QuizBrain();
