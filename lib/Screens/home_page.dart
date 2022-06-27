// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bmi_calculator_app/components/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum GenderSelection { Male, Female }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final inActiveColor = Color(0xff1de33);
  final ActiveColor = Color(0xff1de33);
  // late GenderSelection selection;
  int _Height = 150;
  int _weight = 50;
  int _Age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // selection = GenderSelection.Male;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              FontAwesomeIcons.mars,
                              size: 80,
                            ),
                          ),
                          SizedBox(height: 22),
                          Container(
                            child: Text(
                              "MALE",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(
                            0xff1d1e33), //selection == GenderSelection.Male
                        //? ActiveColor
                        //: inActiveColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // selection = GenderSelection.Female;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              FontAwesomeIcons.venus,
                              size: 80,
                            ),
                          ),
                          SizedBox(height: 22),
                          Container(
                            child: Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(
                            0xff1d1e33), //selection == GenderSelection.Female
                        //? inActiveColor
                        //: ActiveColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            reusableCard(
              color: Color(0xff1d1e33),
              myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            _Height.toString(),
                            style: TextStyle(
                                fontSize: 47, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text("cm"),
                        ),
                      ],
                    ),
                    Container(
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 2,
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFFF1744),
                          overlayColor: Color(0x15eb1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                        ),
                        child: Slider(
                          max: 250,
                          min: 100,
                          onChanged: (double newValue) {
                            setState(() {
                              _Height = newValue.toInt().round();
                            });
                          },
                          value: _Height.toDouble(),
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  reusableCard(
                    color: Color(0xff1d1e33),
                    myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Container(
                                child: Text(
                                  _weight.toString(),
                                  style: TextStyle(
                                      fontSize: 47,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text("Kg"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _weight++;
                                  });
                                },
                                elevation: 8,
                                child: Icon(FontAwesomeIcons.plus, size: 15),
                                constraints: BoxConstraints.tightFor(
                                    height: 56, width: 56),
                                shape: CircleBorder(),
                                fillColor: Color(0xff0a0E21),
                                highlightColor: Color(0xFFFF1744),
                                splashColor: Color(0xFFFF1744),
                              ),
                              SizedBox(width: 5),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _weight--;
                                  });
                                },
                                elevation: 8,
                                child: Icon(FontAwesomeIcons.minus, size: 15),
                                constraints: BoxConstraints.tightFor(
                                    height: 56, width: 56),
                                shape: CircleBorder(),
                                fillColor: Color(0xff0a0E21),
                                highlightColor: Color(0xFFFF1744),
                                splashColor: Color(0xFFFF1744),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  reusableCard(
                    color: Color(0xff1d1e33),
                    myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Container(
                                child: Text(
                                  _Age.toString(),
                                  style: TextStyle(
                                      fontSize: 47,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text("yr"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _Age++;
                                  });
                                },
                                elevation: 8,
                                child: Icon(FontAwesomeIcons.plus, size: 15),
                                constraints: BoxConstraints.tightFor(
                                    height: 56, width: 56),
                                shape: CircleBorder(),
                                fillColor: Color(0xff0a0E21),
                                highlightColor: Color(0xFFFF1744),
                                splashColor: Color(0xFFFF1744),
                              ),
                              SizedBox(width: 5),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _Age--;
                                  });
                                },
                                elevation: 8,
                                child: Icon(FontAwesomeIcons.minus, size: 15),
                                constraints: BoxConstraints.tightFor(
                                    height: 56, width: 56),
                                shape: CircleBorder(),
                                fillColor: Color(0xff0a0E21),
                                highlightColor: Color(0xFFFF1744),
                                splashColor: Color(0xFFFF1744),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints.tightFor(height: 50, width: double.infinity),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF1744),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function onpress;
  final Color color;
  const RoundButton(
      {required this.color, required this.icon, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 8,
      child: Icon(icon, size: 15),
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      shape: CircleBorder(),
      fillColor: color,
      highlightColor: Color(0xFFFF1744),
      splashColor: Color(0xFFFF1744),
    );
  }
}
