import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton( {super.key,required this.answertext, required this.onTap,});
  final String answertext;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answertext,textAlign:TextAlign.center),
    );

  }
}
