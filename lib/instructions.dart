import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:mailer/mailer.dart';

class Instruction extends StatelessWidget {
  final testInstructions = [
    "Check the exam timetable carefully.",
    "Bring your Student ID Booklet or University Library Card",
    "Arrive at least 15 minutes before the exam is due to start ",
    "Do not turn over exam papers until told to do so",
    "Where permitted, students are allowed to use ONLY ONE dictionary during the exam. Invigilators will check that dictionaries contain no additional papers or written materials. Never bring someone else’s dictionary with you.",
    "You are not permitted to share dictionaries, calculators or any other materials during the examination."
  ];

  @override
  Widget build(BuildContext context) {
    final _markDownData =
        testInstructions.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              //height: 220,
              width: double.maxFinite,
              child: Card(
                color: Colors.lightBlue.shade400,
                elevation: 10,
                child: Text(
                  'Instructions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Merriweather',
                      fontSize: 50.0,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              thickness: 3,
              indent: 25.0,
              endIndent: 25.0,
            ),
            Expanded(
              flex: 3,
              child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(20.0),
                  child: Markdown(
                    data: _markDownData,
                  )),
            ),
            Container(
              child: Text(
                'Timer will start once you hit the below button..!',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            OutlineButton(
              onPressed: () {
                Navigator.pushNamed(context, 'UserForm');
              },
              borderSide: BorderSide(color: Colors.teal, width: 3.0),
              shape: StadiumBorder(),
              splashColor: Colors.lightBlueAccent,
              color: Colors.lightBlue,
              child: Text(
                'Get Started',
                style: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
