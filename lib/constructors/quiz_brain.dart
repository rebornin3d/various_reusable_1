import 'package:flutter_application_1/constructors/question_class.dart';

class QuizBrain{
  List<Question> _questionBank = [
    Question(q:'Are you tall ?', a: true),
    Question(q: 'Is your last name John ?',a: false),
    Question(q: 'Are you german ?',a: true)

  ];
  String? questionText;
  int? questionNumber;

  String? getQuestionText(int? questionNumber){
    return _questionBank[questionNumber].questionText;
  }



  List<String> intrebari = [
    "Ce faci?" , "Cum esti?" , "Unde mergi?"
  ];

  List<Laptop> laptopuri = [
    Laptop(mk:'Toshiba' , mod:'Satellite'),
    Laptop(mk: 'Acer' , mod: 'Nitro')
  ];

  cities: [];

}