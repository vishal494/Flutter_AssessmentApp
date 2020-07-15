import 'package:assess_me/mailer_simplified.dart';
import 'package:flutter/material.dart';
//import 'package:assess_me/form.dart';
import 'package:assess_me/professor.dart';

class AssessmentSelector extends StatefulWidget {
  @override
  _AssessmentSelectorState createState() => _AssessmentSelectorState();
}

//enum assessmentIndicator {
//  javaAssessment,
//  ArithmeticAssessment,
//  FunctionalAssessment,
//}

bool javaAssesStatus = false;
bool arithAssessStatus = false;
bool funcAssessStatus = false;
bool isLoading = true;
//final _scaffoldKey2 = GlobalKey<ScaffoldState>();

bool doneButton() {
  if (javaAssesStatus == true &&
      arithAssessStatus == true &&
      funcAssessStatus == true) {
    return true;
  } else
    return false;
}

class _AssessmentSelectorState extends State<AssessmentSelector> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //key: _scaffoldKey2,
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Assessment Selector'),
          automaticallyImplyLeading: false,
          // backgroundColor: Colors.teal,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FlatButton(
                  color: Colors.lightBlue.shade300,
                  splashColor: Colors.green.shade300,
                  onPressed: () {
                    javaAssesStatus
                        ? 'Cannot jump in You\'re done with that section' //TODO: Include a snack bar
                        : Navigator.pushNamed(context, 'JavaAssessment');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Java Assessment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color:
                                javaAssesStatus ? Colors.yellow : Colors.green,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.green,
                                offset: new Offset(3.0, 3.0),
                              ),
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  javaAssesStatus
                                      ? Colors.yellow
                                      : Colors.orange,
                                  javaAssesStatus ? Colors.green : Colors.green,
                                ])),
                        child: Icon(
                          javaAssesStatus ? Icons.done : Icons.arrow_forward,
                          color: javaAssesStatus ? Colors.white : Colors.yellow,
                          size: 40.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white70,
              indent: 40.0,
              endIndent: 40.0,
              thickness: 5.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FlatButton(
                  color: Colors.deepOrangeAccent.shade100,
                  splashColor: Colors.green.shade300,
                  onPressed: () {
                    arithAssessStatus
                        ? 'Cannot go in You\'re done with that section' //TODO: Include a snack bar
                        : Navigator.pushNamed(context, 'ArithmeticAssessment');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Arithmetic Assessment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          )),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: arithAssessStatus
                                ? Colors.yellow
                                : Colors.green,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.green,
                                offset: new Offset(3.0, 3.0),
                              ),
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  arithAssessStatus
                                      ? Colors.yellow
                                      : Colors.orange,
                                  arithAssessStatus
                                      ? Colors.green
                                      : Colors.green,
                                ])),
                        child: Icon(
                          arithAssessStatus ? Icons.done : Icons.arrow_forward,
                          color:
                              arithAssessStatus ? Colors.white : Colors.yellow,
                          size: 40.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white70,
              indent: 40.0,
              endIndent: 40.0,
              thickness: 5.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FlatButton(
                  color: Colors.lightBlue,
                  splashColor: Colors.green.shade300,
                  onPressed: () {
                    funcAssessStatus
                        ? 'Cannot go in You\'re done with that section' //TODO: Include a snack bar
                        : Navigator.pushNamed(context, 'FunctionalAssessment');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Functional Assessment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          )),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: arithAssessStatus
                                ? Colors.yellow
                                : Colors.green,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.green,
                                offset: new Offset(3.0, 3.0),
                              ),
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  funcAssessStatus
                                      ? Colors.yellow
                                      : Colors.orange,
                                  funcAssessStatus
                                      ? Colors.green
                                      : Colors.green,
                                ])),
                        child: Icon(
                          funcAssessStatus ? Icons.done : Icons.arrow_forward,
                          color:
                              funcAssessStatus ? Colors.white : Colors.yellow,
                          size: 40.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              //width: 20.0,
              child: doneButton()
                  ? Padding(
                      padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                      child: RaisedButton(
                        elevation: 50.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: () async {
                          await mailer();
                        },
                        color: Colors.lightGreen,
                        child: Text(
                          'Submit Test',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ))
                  : null,
            )
          ],
        ),
      ),
    );
  }

//  _displaySnackBar(BuildContext context) {
//    final snackBar = SnackBar(
//        backgroundColor: Colors.black,
//        duration: Duration(seconds: 1),
//        content: Text(
//          'Please make a selection..!',
//          style: TextStyle(
//              color: Colors.redAccent,
//              fontWeight: FontWeight.w500,
//              fontStyle: FontStyle.italic,
//              fontSize: 18.0),
//        ));
//    _scaffoldKey2.currentState.showSnackBar(snackBar);
//  }
}
