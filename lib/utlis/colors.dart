import 'package:flutter/material.dart';

class titleColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        titleTextStyle: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.red),
      ),
    );
  }
}
