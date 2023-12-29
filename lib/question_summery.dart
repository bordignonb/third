import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  final List<Map<String, Object>> summeryData;

  const QuestionSummery({required this.summeryData, super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text((data['question']).toString()),
                      const SizedBox(
                        height: 5,
                      ),
                      Text((data['user_answer']).toString()),
                      Text((data['correct_answer']).toString()),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
