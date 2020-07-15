import 'questions.dart';

class JavaQuestions {
  int _questionNumber = 0;
  int maxQuestions = 5;
  List<int> JavaQuestionsList;
  List<Questions> _javaQuestionBank = [
    Questions(
        'what is your name 0 ?', ['vishal', 'ramesh', 'suresh'], 'vishal'),
    Questions(
        'where are you from 1', ['chennai', 'tiruvallure'], 'tiruvallure'),
    Questions('where do you live 2', ['house', 'pg', 'hostel'], 'pg'),
    Questions(
        'what\'s your profession 3', ['tester', 'developer', 'both'], 'both'),
    Questions(
        'what\'s your profession 4', ['tester', 'developer', 'both'], 'both'),
    Questions(
        'where are you from 5', ['chennai', 'tiruvallure'], 'tiruvallure'),
    Questions('where do you live 6', ['house', 'pg', 'hostel'], 'pg'),
    Questions('where do you live 7', ['house', 'pg', 'hostel'], 'pg'),
    Questions('what is your name 8?', ['vishal', 'ramesh', 'suresh'], 'vishal'),
    Questions(
        'where are you from 9', ['chennai', 'tiruvallure'], 'tiruvallure'),
    Questions(
        'where are you from 10', ['chennai', 'tiruvallure'], 'tiruvallure'),
    Questions('where do you live 11', ['house', 'pg', 'hostel'], 'pg'),
    Questions('where do you live 12', ['house', 'pg', 'hostel'], 'pg'),
    Questions(
        'what is your name 13?', ['vishal', 'ramesh', 'suresh'], 'vishal'),
    Questions(
        'where are you from 14', ['chennai', 'tiruvallure'], 'tiruvallure'),
  ];

  List<int> javaRandomNumbGenerator(int length) {
    var list = new List<int>.generate(10, (int index) => index); // [0, 1, 4]
    list.shuffle();
    JavaQuestionsList = list.sublist(0, length);
    //print(JavaQuestionsList);
    return list.sublist(0, length);
  }

  void nextQuestion() {
    if (_questionNumber < maxQuestions - 1) {
      _questionNumber++;
    }
  }

  int numb() {
    return _questionNumber;
  }

  bool isFinished() {
    return _questionNumber == maxQuestions - 1 ? true : false;
  }

  void reset() {
    if (isFinished()) _questionNumber = 0;
  }

  String getQuestionText() {
    return _javaQuestionBank[JavaQuestionsList[_questionNumber]].question;
  }

  List getChoices() {
    return _javaQuestionBank[JavaQuestionsList[_questionNumber]]
        .questionsChoices;
  }

  String getRightAnswer() {
    return _javaQuestionBank[JavaQuestionsList[_questionNumber]].rightAnswer;
  }
}

class AptitudeQuestions {
  int _questionNumber = 0;
  int maxQuestions = 5;
  List<int> aptitudeQuestionsList;
  List<Questions> _aptitudeQuestions = [
    Questions('what is 1+1 Q0', ['2', '3', '4'], '2'),
    Questions('what is 2 * 2 Q1', ['3', '4'], '4'),
    Questions('where 2-1 Q2', ['0', '1', '2'], '1'),
    Questions('what\'s 2 % 2 Q3', ['1', '2', '3'], '1'),
    Questions('what is 1+1 Q4', ['2', '3', '4'], '2'),
    Questions('what is 2 * 2 Q5', ['3', '4'], '4'),
    Questions('where 2-1 Q6', ['0', '1', '2'], '1'),
    Questions('what\'s 2 % 2 Q7', ['1', '2', '3'], '1'),
    Questions('what is 1+1 Q8', ['2', '3', '4'], '2'),
    Questions('what is 2 * 2 Q9', ['3', '4'], '4'),
    Questions('where 2-1 Q10', ['0', '1', '2'], '1'),
    Questions('what\'s 2 % 2 Q11', ['1', '2', '3'], '1'),
  ];

  List<int> arithmeticNumbGenerator(int length) {
    var list = new List<int>.generate(10, (int index) => index); // [0, 1, 4]
    list.shuffle();
    aptitudeQuestionsList = list.sublist(0, length);
    print(aptitudeQuestionsList);
    return list.sublist(0, length);
  }

  void nextQuestion() {
    if (_questionNumber < maxQuestions - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber == maxQuestions - 1 ? true : false;
  }

  String getQuestionText() {
    return _aptitudeQuestions[aptitudeQuestionsList[_questionNumber]].question;
  }

  List getChoices() {
    return _aptitudeQuestions[aptitudeQuestionsList[_questionNumber]]
        .questionsChoices;
  }

  String getRightAnswer() {
    return _aptitudeQuestions[aptitudeQuestionsList[_questionNumber]]
        .rightAnswer;
  }
}

class FunctionalQuestions {
  int _questionNumber = 0;
  int maxQuestions = 5;
  List<int> funcQuestionsList;
  List<Questions> _functionalQuestions = [
    Questions(
        'what is JIRA 0', ['tracker', 'gametool', 'defecttool'], 'gametool'),
    Questions('what is appium ', ['don\'t know', 'Mobile testing tool'],
        'don\'t know'),
    Questions('what\'s standup 1', ['standing up', 'status call', 'pass time'],
        'status call'),
    Questions('what\'s a defect 2', ['developers mistake', 'flaw', 'nothing'],
        'nothing'),
    Questions(
        'what is JIRA 3', ['tracker', 'gametool', 'defecttool'], 'gametool'),
    Questions('what is appium 4', ['don\'t know', 'Mobile testing tool'],
        'don\'t know'),
    Questions('what\'s standup 5', ['standing up', 'status call', 'pass time'],
        'status call'),
    Questions('what\'s a defect 6', ['developers mistake', 'flaw', 'nothing'],
        'nothing'),
    Questions(
        'what is JIRA 7', ['tracker', 'gametool', 'defecttool'], 'gametool'),
    Questions('what is appium 8', ['don\'t know', 'Mobile testing tool'],
        'don\'t know'),
    Questions('what\'s standup 9', ['standing up', 'status call', 'pass time'],
        'status call'),
    Questions('what\'s a defect 10', ['developers mistake', 'flaw', 'nothing'],
        'nothing'),
  ];

  List<int> functionalRandomNumbGenerator(int length) {
    var list = new List<int>.generate(10, (int index) => index); // [0, 1, 4]
    list.shuffle();
    funcQuestionsList = list.sublist(0, length);
    print(funcQuestionsList);
    return list.sublist(0, length);
  }

  void nextQuestion() {
    if (_questionNumber < maxQuestions - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber == maxQuestions - 1 ? true : false;
  }

  String getQuestionText() {
    return _functionalQuestions[funcQuestionsList[_questionNumber]].question;
  }

  List getChoices() {
    return _functionalQuestions[funcQuestionsList[_questionNumber]]
        .questionsChoices;
  }

  String getRightAnswer() {
    return _functionalQuestions[funcQuestionsList[_questionNumber]].rightAnswer;
  }
}
