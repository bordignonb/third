import 'package:flutter/material.dart';
import 'package:third_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
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
          child: const StartScreen(),
        ), //la classe deve essere chiamata come in java
      ),
    ),
  );
}
