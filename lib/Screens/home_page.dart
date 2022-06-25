// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator_app/components/iconwithlevel.dart';
import 'package:bmi_calculator_app/components/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  reusableCard(
                    color: Color(0xff1d1e33),
                    myChild: iconWithLevel(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                  reusableCard(
                    color: Color(0xff1d1e33),
                    myChild: iconWithLevel(
                      icon: FontAwesomeIcons.mars,
                      lable: 'FEMALE',
                    ),
                  ),
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
                              RoundButton(
                                  color: Color(0xff0a0E21),
                                  icon: FontAwesomeIcons.plus,
                                  onpress: () {}),
                              RoundButton(
                                  color: Color(0xff0a0E21),
                                  icon: FontAwesomeIcons.minus,
                                  onpress: () {}),
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
                              // Container(
                              //   child: Text("Kg"),
                              // ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                  color: Color(0xff0a0E21),
                                  icon: FontAwesomeIcons.plus,
                                  onpress: () {}),
                              RoundButton(
                                  color: Color(0xff0a0E21),
                                  icon: FontAwesomeIcons.minus,
                                  onpress: () {}),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            )
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
    );
  }
}
