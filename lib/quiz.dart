import 'package:flutter/cupertino.dart';
import 'package:third_app/questions_screen.dart';
import 'package:third_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_screen';

  //Widget? activeScreen;
  //@override
  //void initState() {
  //  // TODO: implement initState
  //   activeScreen=  StartScreen(switchScreen);
  //  super.initState();
  //}
  void switchScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget= StartScreen(switchScreen);
    if(activeScreen == 'question_screen'){
      screenWidget=const QuestionScreen();
    }
    return MaterialApp(
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
          child:screenWidget,
        ), //la classe deve essere chiamata come in java
      ),
    );
  }
}
