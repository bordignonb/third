import 'package:flutter/material.dart';
import 'package:third_app/answer_button.dart';
import 'package:third_app/models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  answerQuestion(String selectAnswer) {
    widget.onSelectedAnswer(selectAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                textAlign: TextAlign.center,
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 201, 153, 246),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
