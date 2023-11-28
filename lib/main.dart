import 'package:flutter/material.dart';
import 'package:third_app/gradient_container.dart';

void main() {
  const bkColor = Colors.deepPurple;
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: bkColor,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/quiz-logo.png', width: 200),
              const SizedBox(height: 50),
              const Text('Learn flutter the fun Way',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Add your button click logic here
                },
                child: const Text(
                  'Start quiz',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
