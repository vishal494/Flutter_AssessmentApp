import 'package:assess_me/userDataModel.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Model userData = Model();

class UserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0)),
          ),
          title: Row(
            children: <Widget>[
              Icon(Icons.assignment_ind),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'One Last Step...',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
              ),
            ],
          ),
          elevation: 3.0,
        ),
        body: TestForm(),
      ),
    );
  }
}

class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  String _valnotice;
  String _valDef;
  List _PreviousWorked = ["Yes", "No"];
  List _Listdef = ["Agency", "Newspaper", "Social Media"];

  final _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    width: halfMediaWidth,
                    child: ReusableFormFields(
                      outlinedBorder: true,
                      labelText: 'First Name',
                      validator: (fName) {
                        RegExp regex = new RegExp(namePattern);
                        if (!regex.hasMatch(fName.trim()))
                          return 'Invalid username';
                        else
                          return null;
                      },
                      onSaved: (fName) => userData.setFirstName(fName),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: halfMediaWidth,
                    child: ReusableFormFields(
                      outlinedBorder: true,
                      labelText: 'Last Name',
                      validator: (lName) {
                        RegExp regex = new RegExp(namePattern);
                        if (!regex.hasMatch(lName.trim()))
                          return 'Invalid username';
                        else
                          return null;
                      },
                      onSaved: (lName) => userData.lastName = lName,
                    ),
                  )
                ],
              ),
            ),
          ),
          ReusableFormFields(
            outlinedBorder: false,
            labelText: 'Email Address',
            validator: (eMail) {
              RegExp regex = new RegExp(emailPattern);
              if (!regex.hasMatch(eMail.trim()))
                return 'Invalid email';
              else
                return null;
            },
            onSaved: (eMail) => userData.email = eMail,
          ),
          ReusableFormFields(
            outlinedBorder: false,
            labelText: 'Phone number',
            validator: (pHone) {
              RegExp regex = new RegExp(phonePattern);
              if (!regex.hasMatch(pHone.trim()))
                return 'Invalid phone number';
              else
                return null;
            },
            onSaved: (pHone) => userData.phoneNumber = pHone,
          ),
          ReusableFormFields(
            outlinedBorder: false,
            labelText: 'Current Employer',
            validator: (currentEMP) {
              if (currentEMP.isEmpty)
                return 'Please fill youre current Employer name';
              else
                return null;
            },
            onSaved: (currentEMP) => userData.currentEmployer = currentEMP,
          ),
          ReusableFormFields(
            outlinedBorder: false,
            labelText: 'Current Designation',
            validator: (currentEMP) {
              if (currentEMP.isEmpty)
                return 'Please fill youre current Designation';
              else
                return null;
            },
            onSaved: (currentEMP) => userData.currentEmployer = currentEMP,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      width: halfMediaWidth,
                      child: ReusableFormFields(
                        outlinedBorder: true,
                        labelText: 'Current CTC',
                        validator: (cCTC) {
                          if (cCTC.isEmpty)
                            return 'Please fill your current CTC';
                          else
                            return null;
                        },
                        onSaved: (cCTC) => userData.currentCTC = cCTC,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: halfMediaWidth,
                      child: ReusableFormFields(
                        outlinedBorder: true,
                        labelText: 'Expected CTC',
                        validator: (eCTC) {
                          if (eCTC.isEmpty)
                            return 'Please fill your Expected CTC';
                          else
                            return null;
                        },
                        onSaved: (eCTC) => userData.expectedCTC = eCTC,
                      ),
                    ),
                  ]),
            ),
          ),
          ReusableFormFields(
            outlinedBorder: false,
            labelText: 'Notice period',
            validator: (value) {
              if (value.isEmpty)
                return 'Please fill youre current Designation';
              else
                return null;
            },
            onSaved: (value) => userData.noticePeriod = value,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 8.0, top: 15.0, bottom: 8.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Previously worked with us?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        DropdownButton(
                          hint: Text("Make Selection.."),
                          value: _valnotice,
                          items: _PreviousWorked.map((value) {
                            return DropdownMenuItem(
                              child: Text(value),
                              value: value,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(
                              () {
                                _valnotice = value;
                                userData.noticePeriod = value;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "How do you know about us",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        DropdownButton(
                          hint: Text("Make Selection.."),
                          value: _valDef,
                          items: _Listdef.map((value) {
                            return DropdownMenuItem(
                              child: Text(value),
                              value: value,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _valDef = value;
                              userData.knowAboutUs = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Tell Us something about you",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    maxLines: 4,
                    cursorColor: Colors.amber,
                    style: TextStyle(height: 2.0),
                    decoration: InputDecoration(
                      hintText: "Help us know you better, Start typing..",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                    controller: _controller,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  setState(() {
                    this._formKey.currentState.save();
                  });
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                    userData.aboutThem = _controller.text;
                    print(userData.getfirstName());
                    Navigator.pushNamed(context, 'AssessmentSelector');
                  }
                }
              },
              child: Center(
                child: Text('Ready'),
              ),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableFormFields extends StatelessWidget {
  ReusableFormFields(
      {@required this.outlinedBorder,
      @required this.labelText,
      this.validator,
      this.onSaved});

  final bool outlinedBorder;
  final String labelText;
  final Function validator;
  final Function onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        //focusNode: myFocusNode,
        //autofocus: true, IF auto focus is set to true it will need a focus node to start with
        cursorColor: Colors.amber,
        cursorWidth: 3.0,
        style: TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
          hintText: 'Typing..',
          labelText: labelText,
          border: outlinedBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )
              : null,
        ),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
