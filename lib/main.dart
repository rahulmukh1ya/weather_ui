import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top]);
  runApp(const MyApp());
}

// device width: 392.72
// device height: 825.45 // diff: 12
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/weather_ui_assets/bimg.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              width: 168.0,
              height: 97.0,
              top: 72.63, // 9.36
              left: 112.4,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/weather_ui_assets/top_cloud.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              width: 126.0,
              height: 66.0,
              top: 222.29,
              left: -28,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/weather_ui_assets/top_left_cloud.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              width: 100.0,
              height: 56.0,
              top: 280.73,
              left: 302.0,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/weather_ui_assets/top_right_cloud.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              width: 190.0,
              height: 86.0,
              top: 387.87,
              left: -33,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/weather_ui_assets/middle_left_cloud.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              width: 158.0,
              height: 74.0,
              top: 379.95,
              left: 120,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/weather_ui_assets/middle_center_cloud.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              width: 124.0,
              height: 64.0,
              top: 421.55,
              left: 289.0,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/weather_ui_assets/middle_right_cloud.png"),
                  ),
                ),
              ),
            ),
            const Positioned(
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
            ),
            Align(
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
                        Color(0xB0ACAAB0),
                        Color(0x00000000),
                      ],
                    ),
                  ),
                  child: ClipPath(
                    clipper: CustomClipPath(),
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
                              child: Row(
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
                              ),
                            ),
                          ]),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

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
