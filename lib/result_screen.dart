import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_app/data/questions.dart';
import 'package:third_app/question_summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.chosenAnswer, super.key});

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSymmeryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summeryData = getSymmeryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summeryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('You answered $numCorrectQuestions of $numTotalQuestions correctly'),
            const SizedBox(height: 20),
            QuestionSummery(summeryData: getSymmeryData()),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
