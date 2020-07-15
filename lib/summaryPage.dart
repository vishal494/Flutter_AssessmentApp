import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Submitting your test'),
                SizedBox(height: 40),
                CircularProgressIndicator(
                  backgroundColor: Colors.green,
                  strokeWidth: 10.0,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
