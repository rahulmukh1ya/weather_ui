import 'package:flutter/material.dart';

class WeatherInfoWidget extends StatelessWidget {
  const WeatherInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      width: 159.0,
      height: 183.0,
      top: 158.48,
      left: 116.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Montreal",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              height: 1.2,
            ),
          ),
          Text(
            "19°",
            style: TextStyle(
              fontSize: 96,
              fontWeight: FontWeight.w200,
              color: Colors.white,
              height: 1.0,
            ),
          ),
          Text(
            "Mostly Clear",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0x99EBEBF5),
              height: 1.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'H:24°',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.2),
              ),
              Text(
                'L:18°',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
