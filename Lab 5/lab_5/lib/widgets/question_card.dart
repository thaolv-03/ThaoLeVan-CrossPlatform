// lib/widgets/question_card.dart
import 'package:flutter/material.dart';
import 'package:lab_5/models/question.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  final Function(String) onAnswerSelected;

  QuestionCard({required this.question, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.questionText, style: TextStyle(fontSize: 18)),
        ...question.options.map((option) => ListTile(
              title: Text(option),
              onTap: () => onAnswerSelected(option),
            )),
      ],
    );
  }
}
