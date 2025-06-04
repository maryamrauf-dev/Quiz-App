class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getshuffledAnswers() {
    final shuffledanswers = List.of(answers);
    shuffledanswers.shuffle();
    return shuffledanswers;
  }
}
