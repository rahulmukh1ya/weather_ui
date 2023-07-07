import 'package:flutter/material.dart';
import '../../../Business_Logic/bezier_curve_logic.dart';

class BezierCurveWidget extends StatelessWidget {
  final Widget child;
  const BezierCurveWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BezierCurveLogic(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFB387F3),
              Color(0x00FFF1F1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
