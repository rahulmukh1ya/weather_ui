import 'package:flutter/material.dart';

class CloudWidget extends StatelessWidget {
  final double width;
  final double height;
  final double top;
  final double left;
  final String imagePath;
  
  const CloudWidget({
    super.key,
    required this.width,
    required this.height,
    required this.top,
    required this.left,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: width,
      height: height,
      top: top,
      left: left,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imagePath),
        )),
      ),
    );
  }
}
