import 'package:adv_basics/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answers) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuizQuestions();
  }
}

class _QuizQuestions extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers); //by using widget. we can access the class which it extend variables
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = question[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 194, 154, 210),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getshuffledAnswers().map((item) {
              return Column(
                children: [
                  AnswerButton(
                    answertext: item,
                    onTap: () {
                      answerQuestion(item);
                    },
                  ),
                  const SizedBox(height: 10), // space between buttons
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
