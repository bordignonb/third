import 'package:flutter/material.dart';
import 'package:third_app/questions_summery/summery_item.dart';

class QuestionSummery extends StatelessWidget {
  final List<Map<String, Object>> summeryData;

  const QuestionSummery({required this.summeryData, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: summeryData.map((data) {
              return SummeryItem(data);
            }).toList(),
          ),
        ));
  }
}
