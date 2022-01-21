import 'package:flutter/material.dart';

import 'cars_class.dart';
import 'cities.dart';
import 'quiz_brain.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  List<Car> carsList = [
    Car(m: 'Fiat', van: true),
    Car(m: 'BMW', van: false)];



  List<City> cityList = [
    City(name: 'Berlin', milPeople: 3),
    City(name: 'Toronto', milPeople: 5)
  ];

  // another syntax example
  final cities = [
    City(name: 'Berlin', milPeople: 3),
    City(name: 'Toronto', milPeople: 5)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constructors'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text(quizBrain.getQuestionText(0)),
         // Text(quizBrain.intrebari[0]),
        //  Text(quizBrain.laptopuri[0])
        ],
      ),
    );
  }
}

QuizBrain quizBrain = QuizBrain();
QuizBrain quizBrain_1 = QuizBrain();
QuizBrain quizBrain_2 = QuizBrain();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}
