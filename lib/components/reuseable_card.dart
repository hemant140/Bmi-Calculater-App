import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Color color;
  final Widget myChild;
  const reusableCard({required this.color, required this.myChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: myChild,
        ));
  }
}
