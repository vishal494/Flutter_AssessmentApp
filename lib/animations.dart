import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;
  FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;

  _SplashScreenState() {
    _timer = new Timer(const Duration(seconds: 2), () {
      setState(() {
        _logoStyle = FlutterLogoStyle.horizontal;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: new FlutterLogo(
              size: 200.0,
              style: _logoStyle,
            ),
          ),
        ),
      ),
    );
  }
}
