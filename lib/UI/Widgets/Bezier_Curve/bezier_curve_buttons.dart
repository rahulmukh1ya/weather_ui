import 'package:flutter/material.dart';

class BezierCurveButtons extends StatelessWidget {
  const BezierCurveButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.menu_book,
          color: Colors.white,
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0x4FD0A2F3),
          child: const Icon(Icons.add),
        ),
        const Icon(
          Icons.list,
          color: Colors.white,
        ),
      ],
    );
  }
}
