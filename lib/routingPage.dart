import 'package:assess_me/FunctionalAssessment.dart';
import 'package:assess_me/arithmeticAssessment.dart';
import 'package:assess_me/assessmentSelector.dart';
import 'package:assess_me/form.dart';
import 'package:assess_me/instructions.dart';
import 'package:assess_me/javaAssessment.dart';
import 'package:assess_me/loginScreen.dart';
import 'package:assess_me/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterBrain {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => StartAssessment());
      case 'Instruction':
        return MaterialPageRoute(builder: (_) => Instruction());
      case 'AssessmentSelector':
        return MaterialPageRoute(builder: (_) => AssessmentSelector());
      case 'JavaAssessment':
        return MaterialPageRoute(builder: (_) => AssessMe());
      case 'ArithmeticAssessment':
        return MaterialPageRoute(builder: (_) => ArithmeticAssessment());
      case 'FunctionalAssessment':
        return MaterialPageRoute(builder: (_) => FunctionalAssessment());
      case "UserForm":
        return MaterialPageRoute(builder: (_) => UserForm());
      case "UserLogin":
        return MaterialPageRoute(builder: (_) => UserLogin());
    }
  }
}
