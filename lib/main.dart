import 'package:assess_me/instructions.dart';
import 'package:assess_me/routingPage.dart';
import 'package:assess_me/summaryPage.dart';
import 'package:flutter/material.dart';
import 'assessmentSelector.dart';
import 'loginScreen.dart';
import 'package:assess_me/animations.dart';
import 'uiDesign.dart';
import 'form.dart';

void main() => runApp(StartAssessment());

final ThemeData _myAppTheme = new ThemeData(
  appBarTheme: AppBarTheme(color: Colors.teal, elevation: 3.0),
);

class StartAssessment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart Assessment",
      //TODO : Create a theme for the application so anywhere you go you need not set the background and button colors.
      theme: _myAppTheme,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: //Summary(),
              // UserForm(),
              // Instruction(),
              UserLogin(),
          //UIDesgin(),
          //SplashScreen(),
          //Instruction(),
          //AssessmentSelector(),

          //AssessMe(),
        ),
      ),
      initialRoute: 'UserLogin',
      onGenerateRoute: RouterBrain.generateRoutes,
    );
  }
}
