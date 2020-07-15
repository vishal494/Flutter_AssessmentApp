import 'package:assess_me/assessmentSelector.dart';

import 'package:assess_me/questionsList.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

FunctionalQuestions functionalQuestions = FunctionalQuestions();
//Brains brains = Brains();

class FunctionalAssessment extends StatefulWidget {
  @override
  _FunctionalAssessmentState createState() => _FunctionalAssessmentState();
}

bool functionalResult = false;

class _FunctionalAssessmentState extends State<FunctionalAssessment> {
  int currentSelectedOption;
  var currentSelectedLabel;
  String statusText = 'Next';
  var color;
  var icon = Icons.navigate_next;
  String warningText = 'Please Make a selection';
  var warningColor = Colors.red;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int counter = 0;
  int numberOfQuestions = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    questionsToBeAsked();
  }

  //This method is used to generate a list of questions to be asked in each section,
  // this runs only once
  //in a program cycle.
  void questionsToBeAsked() {
    //Here you get to specify the number of questions to be asked
    functionalQuestions.functionalRandomNumbGenerator(numberOfQuestions);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          automaticallyImplyLeading: false,
          title: Text('Java Assessment'),
          //automaticallyImplyLeading: false,
          //TODO:: include automaticallyImplyLeading once done with the pop up next section
          elevation: 3.0,
          actions: <Widget>[
            //TODO:: Insert Icons to make it more attractive
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: AutoSizeText(
                  functionalQuestions.getQuestionText(),
                  maxLines: 9,
                  minFontSize: 30.0,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: options(),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            nextButton(context),
          ],
        ),
      ),
    );
  }

  Widget nextButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton.icon(
              color: color,
              onPressed: () {
                setState(() {
                  if (statusText == 'Next Section') {
                    _onAlertButtonPressed(context);
                  } else {
                    if (currentSelectedLabel != null &&
                        currentSelectedLabel.toString() != null) {
                      //print(currentSelectedLabel);
                      //print(functionalQuestions.getRightAnswer());
                      if (currentSelectedLabel ==
                          functionalQuestions.getRightAnswer()) {
                        counter++;
                        //print('pass');
                      }
                      if (functionalQuestions.isFinished()) {
                        statusText = 'Next Section';
                        color = Colors.green.shade300;
                        icon = Icons.keyboard_arrow_up;
                        _onAlertButtonPressed(context);
                        (numberOfQuestions / 2 <= counter)
                            ? functionalResult = true
                            : functionalResult = false;
                        print(functionalResult);
                        //javaQuestions.reset();
                        // print(javaQuestions.numb());
                      }
                      currentSelectedLabel = null;
                      functionalQuestions.nextQuestion();
                      // print('After $currentSelectedLabel');
                    } else {
                      _displaySnackBar(context);
                    }
                  }
                });
              },
              icon: Icon(icon),
              label: Text(
                statusText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget container() {
    return Container(
      child: Text('Done with assessment'),
    );
  }

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(seconds: 1),
        content: Text(
          'Please make a selection..!',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 18.0),
        ));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  List<Widget> options() {
    List<Widget> answerOptions = [];
    for (int i = 0; i < functionalQuestions.getChoices().length; i++) {
      var answerOption = Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            highlightColor: Colors.amberAccent.shade100,
            color: Colors.blue.shade400,
            onPressed: () {
              setState(() {
                currentSelectedOption = i;
                currentSelectedLabel =
                    functionalQuestions.getChoices()[currentSelectedOption];
              });
            },
            child: Text(
              functionalQuestions.getChoices()[i],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color:
                    currentSelectedLabel == functionalQuestions.getChoices()[i]
                        ? Colors.amberAccent
                        : Theme.of(context).textTheme.body1.color,
              ),
            ),
          ),
        ),
      );
      answerOptions.add(answerOption);
    }
    return answerOptions;
  }

  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Done with Functional Assessment",
      desc: "Thank You..!",
      buttons: [
        DialogButton(
            child: Text(
              "Done",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            width: 120,
            onPressed: () {
              Navigator.pushNamed(context, 'AssessmentSelector');
              funcAssessStatus = true;
              //Navigator.push(context, MaterialPageRoute(builder: (context) {
              //return TypesOfAssessment();
              //}));
            })
      ],
    ).show();
  }
}
