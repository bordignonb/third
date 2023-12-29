import 'package:flutter/cupertino.dart';
import 'package:third_app/questions_screen.dart';
import 'package:third_app/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:third_app/data/questions.dart';
import 'package:third_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results_screen';

      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question_screen') {
      screenWidget = QuestionScreen(onSelectedAnswer: chooseAnswer);
    }
    if (activeScreen == 'results_screen') {
      screenWidget =  ResultScreen(chosenAnswer: selectedAnswer);
    }
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        // mostra quello che vedi nell'app
        body: Container(

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 77, 45, 145),
                Color.fromARGB(255, 79, 28, 169),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ), //la classe deve essere chiamata come in java
      ),
    );
  }
}
