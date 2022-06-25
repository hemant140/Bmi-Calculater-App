import 'package:flutter/material.dart';

class iconWithLevel extends StatelessWidget {
  final IconData icon;
  final String lable;
  const iconWithLevel({required this.icon, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        child: Icon(
          icon,
          size: 80,
        ),
      ),
      SizedBox(height: 30),
      Container(
        child: Text(
          lable,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
