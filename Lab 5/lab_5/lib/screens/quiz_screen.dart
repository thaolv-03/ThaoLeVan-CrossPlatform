// lib/screens/quiz_screen.dart
import 'package:flutter/material.dart';
import 'package:lab_5/models/question.dart';
import 'package:lab_5/widgets/question_card.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Question> questions = [
    Question(
      questionText: 'What is Flutter?',
      options: ['Framework', 'Language', 'IDE', 'OS'],
      correctAnswer: 'Framework',
    ),
    // Add more questions here
  ];
  int currentIndex = 0;

  void _onAnswerSelected(String answer) {
    if (answer == questions[currentIndex].correctAnswer) {
      // Handle correct answer (e.g., increment score)
    }
    setState(() {
      if (currentIndex < questions.length - 1) {
        currentIndex++;
      } else {
        // Handle end of quiz
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: QuestionCard(
          question: questions[currentIndex],
          onAnswerSelected: _onAnswerSelected,
        ),
      ),
    );
  }
}
