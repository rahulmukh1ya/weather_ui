import 'package:flutter/material.dart';

class BottomContainerWidget extends StatelessWidget {
  final Widget child;
  const BottomContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 356.92, //356.92
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0x80ACAAB0),
              Color(0x00000000),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
