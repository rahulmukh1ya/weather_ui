import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_ui/UI/Widgets/background_image_widget.dart';
import 'package:weather_ui/UI/Widgets/Bezier_Curve/bezier_curve_buttons.dart';
import 'package:weather_ui/UI/Widgets/bottom_container_widget.dart';
import 'package:weather_ui/UI/Widgets/cloud_widget.dart';
import 'package:weather_ui/UI/Widgets/weather_info_widget.dart';
import 'UI/Widgets/Bezier_Curve/bezier_curve_widget.dart';

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
            const BackgroundImageWidget(),
            const CloudWidget(
              width: 168.0,
              height: 97.0,
              top: 72.63,
              left: 112.4,
              imagePath: "assets/weather_ui_assets/top_cloud.png",
            ),
            const CloudWidget(
              width: 126.0,
              height: 66.0,
              top: 222.29,
              left: -28,
              imagePath: "assets/weather_ui_assets/top_left_cloud.png",
            ),
            const CloudWidget(
              width: 100.0,
              height: 56.0,
              top: 280.73,
              left: 302.0,
              imagePath: "assets/weather_ui_assets/top_right_cloud.png",
            ),
            const CloudWidget(
              width: 190.0,
              height: 86.0,
              top: 387.87,
              left: -33,
              imagePath: "assets/weather_ui_assets/middle_left_cloud.png",
            ),
            const CloudWidget(
              width: 158.0,
              height: 74.0,
              top: 379.95,
              left: 120,
              imagePath: "assets/weather_ui_assets/middle_center_cloud.png",
            ),
            const CloudWidget(
              width: 124.0,
              height: 64.0,
              top: 421.55,
              left: 289.0,
              imagePath: "assets/weather_ui_assets/middle_right_cloud.png",
            ),
            const WeatherInfoWidget(),
            const BottomContainerWidget(
              child: BezierCurveWidget(
                child: BezierCurveButtons(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 350,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        // color: const Color.fromARGB(77, 15, 121, 208),
                        height: 63.72,
                        child: const Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Hourly Forecast",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0x99EBEBF5)),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color(0x82000000),
                                thickness: 5,
                                height: 0,
                                indent: 35,
                                endIndent: 35,
                              ),
                            ),
                            Text(
                              "Weelkly Forecast",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0x99EBEBF5)),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color(0x6BA9A7AB),
                        thickness: 2,
                      ),
                      Container(
                        // color: Colors.yellow,
                        height: 132.81,
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}


/*
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
                      Color(0x80ACAAB0),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
 */