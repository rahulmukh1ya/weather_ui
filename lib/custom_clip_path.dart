import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.moveTo(0, 220);
    path.lineTo(0, 220);
    path.quadraticBezierTo(w * 0.5, 300, w, 220);
    path.lineTo(w, 220);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.lineTo(0, 220);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
