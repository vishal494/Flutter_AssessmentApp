import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final _formKey = GlobalKey<FormState>();

  String _username, _email, _phoneNumber = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 16.0, bottom: 8.0, left: 16.0, right: 16.0),
                    child: Text(
                      'Welcome to XMUODL Mobile ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    ),
                  ),
                ),
//                Expanded(
//                  flex: 1,
//                  child: Container(
//                    margin: EdgeInsets.only(
//                        top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
//                    child: Text(
//                      'Ready to Take Assessment',
//                      textAlign: TextAlign.center,
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontWeight: FontWeight.bold,
//                          fontSize: 20.0),
//                    ),
//                  ),
//                ),
                Expanded(
                  flex: 2,
                  child: Container(
//                      child: Form(
//                    key: _formKey,
//                    child: SingleChildScrollView(
//                      child: Column(
//                        children: <Widget>[
//                          userName(),
//                          SizedBox(
//                            height: 10,
//                          ),
//                          emailID(),
//                          SizedBox(
//                            height: 10,
//                          ),
//                          phoneNumber(),
//                          SizedBox(
//                            height: 40,
//                          ),
//                          button(),
//                        ],
//                      ),
//                    ),
//                  )
                    //margin: EdgeInsets.all(16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'This is the first stage of your interview process, this constitutes of 3 sections based on '
                        'your skill set once you clear this round you\'ll to called for the next rounds \n\nReady to rock..!!',
                        style: TextStyle(fontSize: 20.00),
                      ),
                    ),

                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.tealAccent, width: 2),
                      boxShadow: const [
                        BoxShadow(blurRadius: 20),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, left: 20.0, right: 20.0, bottom: 8.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'Instruction');
                    },
                    child: Text('Get  ->  Set'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(8.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget userName() {
    return TextFormField(
      cursorColor: Colors.blue,
      style: TextStyle(
          color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      decoration: const InputDecoration(
        hintText: 'Enter your Name',
        hintStyle: TextStyle(fontSize: 30.0),
        labelText: 'You\'re Name',
        labelStyle: TextStyle(
          color: Colors.black87,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      validator: (username) {
        Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
        RegExp regex = new RegExp(pattern);
        if (!regex.hasMatch(username))
          return 'Invalid username';
        else
          return null;
      },
      onSaved: (username) => _username = username,
    );
  }

//  Widget emailID() {
//    return TextFormField(
//      cursorColor: Colors.blue,
//      style: TextStyle(
//          color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
//      decoration: const InputDecoration(
//        hintText: 'Enter your email ID',
//        hintStyle: TextStyle(fontSize: 30.0),
//        labelText: 'You\'re Email ID',
//        labelStyle: TextStyle(
//          color: Colors.black87,
//          fontSize: 20.0,
//          fontWeight: FontWeight.normal,
//        ),
//      ),
//      validator: (email) {
//        if (EmailValidator.validate(email)) {
//          return null;
//        } else {
//          return 'Invalid Email ID';
//        }
//      },
//      onSaved: (email) => _email = email,
//    );
//  }

  Widget phoneNumber() {
    return TextFormField(
      cursorColor: Colors.blue,
      style: TextStyle(
          color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      decoration: const InputDecoration(
        hintText: 'Enter your Phone Number',
        hintStyle: TextStyle(fontSize: 30.0),
        labelText: 'You\'re Phone Number',
        labelStyle: TextStyle(
          color: Colors.black87,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      validator: (phoneNumber) {
        Pattern pattern =
            r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$';
        RegExp regex = new RegExp(pattern);
        if (phoneNumber.length == 10 && regex.hasMatch(phoneNumber)) {
          return null;
        } else {
          return 'Invalid Phone number';
        }
      },
      onSaved: (phoneNumber) => _phoneNumber = phoneNumber,
    );
  }

  Widget button() {
    return RaisedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            setState(() {
              this._formKey.currentState.save();
              print('$_username email $_email phone $_phoneNumber');
            });

            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }

            // TODO:: use the below in page 2
//            Scaffold.of(context)
//                .showSnackBar(SnackBar(content: Text('Processing Data')));

//            new Future.delayed(const Duration(seconds: 3), () {
//              print('Ready to navigate');
//            });
          }
        },
        child: Text(
          'Get Started',
          style: TextStyle(fontSize: 20.0),
        ),
        elevation: 2.0,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ));
  }
}
