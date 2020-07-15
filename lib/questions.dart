import 'questionsList.dart';

JavaQuestions jq = JavaQuestions();

class Questions {
  String question;
  List<String> questionsChoices;
  String rightAnswer;

  Questions(String Question, List<String> choices, String answer) {
    question = Question;
    questionsChoices = choices;
    rightAnswer = answer;
  }
}
