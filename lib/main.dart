import 'package:flutter/material.dart';
import 'package:third_app/gradient_container.dart';
void main()
{
  //const List<Color> listcolour=[ Colors.deepPurple, Colors.purpleAccent];
  runApp( MaterialApp(
    home:Scaffold(
        backgroundColor: Colors.deepPurple,
        body:Column(
          children: [
            Image.asset('assets/images/quiz-logo.png'),
            Text('ok'),
          ],
        )// GradientContainer(listcolour)

    )
  ));
}