import 'package:flutter/material.dart';

const kLabelColor = Color(0xfFB2FEFE);
const kThemeBKColor = Colors.teal;
const kAppBarColor = Colors.orange;
const kTitleLableColor = Colors.amberAccent;
const kBoxShadowColor = Color(0xFFFF8A80);
const kTitleFont = FontWeight.bold;
const kSlectedTileColor = Color(0xFFBB6A83);

enum selectedLabel {
  MLINT_BuyInfo,
  MLINT_LineInfo,
  MLINT_AccountInfo,
  DINT_BuyInfo,
  DINT_LineInfo,
  DINT_AccountInfo,
  PreProd_BuyInfo,
  PreProd_LineInfor,
  PreProd_AccountInfo,
  QA_BuyInfo,
  QA_LineInfo,
  QA_AccountInfo,
}

class UIDesgin extends StatefulWidget {
  @override
  _UIDesginState createState() => _UIDesginState();
}

ThemeData appTheme = ThemeData(
  backgroundColor: kThemeBKColor,
  appBarTheme: AppBarTheme(
      color: kAppBarColor, elevation: 2.0, brightness: Brightness.dark),
);

class _UIDesginState extends State<UIDesgin> {
  selectedLabel _label;

  bool determineWhichLabel(String labelName) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('MSP Api Health')),
          backgroundColor: kThemeBKColor,
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, right: 8.0, left: 8.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                      //MLINT Label - Gesture detector
                      onTap: () {
                        setState(() {
                          print('hello world');
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'MLINT',
                        labelColor: Colors.amberAccent,
                        titleFlag: FontWeight.bold,
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                            onTapDown: (_) {
                              setState(() {
                                print('hello world2');
                                _label = selectedLabel.MLINT_BuyInfo;
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                _label = null;
                                ;
                              });
                            },
                            child: ReUseable(
                              fieldLabel: 'BuyInfo',
                              labelColor: _label == selectedLabel.MLINT_BuyInfo
                                  ? kSlectedTileColor
                                  : kLabelColor,
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTapDown: (_) {
                              setState(() {
                                print('hello world2');
                                // state = 'ML';
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                //state = 'MLF';
                              });
                            },
                            child: ReUseable(
                              fieldLabel: 'LineInfo',
                              labelColor: kLabelColor,
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTapDown: (_) {
                              setState(() {
                                print('hello world2');
                                //state = true;
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                //state = false;
                              });
                            },
                            child: ReUseable(
                              fieldLabel: 'AccountInfo',
                              labelColor: kLabelColor,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                        });
                      },
                      onDoubleTap: () {
                        setState(() {});
                      },
                      child: ReUseable(
                        fieldLabel: 'DINT',
                        labelColor: kTitleLableColor,
                        titleFlag: kTitleFont,
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                          // state = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          // state = false;
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'BuyInfo',
                        labelColor: kLabelColor,
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                          //state = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          //state = false;
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'LineInfo',
                        labelColor: kLabelColor,
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                          //state = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          //state = false;
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'AccountInfo',
                        labelColor: kLabelColor,
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ReUseable(
                      fieldLabel: 'PreProd',
                      labelColor: kTitleLableColor,
                      titleFlag: kTitleFont,
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                          // state = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          // state = false;
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'BuyInfo',
                        labelColor: kLabelColor,
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                          //state = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          // state = false;
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'LineInfo',
                        labelColor: kLabelColor,
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                          //state = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          //state = false;
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'AccountInfo',
                        labelColor: kLabelColor,
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          print('hello world2');
                          //state = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          // state = false;
                        });
                      },
                      child: ReUseable(
                        fieldLabel: 'QA',
                        labelColor: kTitleLableColor,
                        titleFlag: kTitleFont,
                      ),
                    )),
                    Expanded(child: ReUseable(fieldLabel: 'BuyInfo')),
                    Expanded(child: ReUseable(fieldLabel: 'LineInfo')),
                    Expanded(child: ReUseable(fieldLabel: 'AccountInfo')),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Center(
                      child: Text('Soon i will display the Line Status'),
                    ),
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReUseable extends StatelessWidget {
  ReUseable({@required this.fieldLabel, this.labelColor, this.titleFlag});

  final String fieldLabel;
  final Color labelColor;
  final FontWeight titleFlag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0),
      child: Container(
          alignment: Alignment(0, 0),
          height: 50.0,
          child: Text(
            fieldLabel,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight:
                    titleFlag != null ? FontWeight.bold : FontWeight.normal),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            shape: BoxShape.rectangle,
            color: labelColor != null ? labelColor : kLabelColor,
            boxShadow: [
              new BoxShadow(
                color: kBoxShadowColor,
                offset: new Offset(2.0, 2.5),
              )
            ],
          )),
    );
  }
}

class DetailsENVIndividual extends StatefulWidget {
  @override
  _DetailsENVIndividualState createState() => _DetailsENVIndividualState();
}

class _DetailsENVIndividualState extends State<DetailsENVIndividual> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
