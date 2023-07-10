import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_ui/UI/Widgets/background_image_widget.dart';
import 'package:weather_ui/UI/Widgets/Bezier_Curve/bezier_curve_buttons.dart';
import 'package:weather_ui/UI/Widgets/bottom_container_widget.dart';
import 'package:weather_ui/UI/Widgets/cloud_widget.dart';
import 'package:weather_ui/UI/Widgets/weather_info_widget.dart';
import 'UI/Widgets/Bezier_Curve/bezier_curve_widget.dart';
import 'Models/weather_model.dart';

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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<WeatherModel> weatherData = [
    WeatherModel(
        time: "12 AM", iconData: Icons.thunderstorm, temperature: "19°"),
    WeatherModel(
        time: "Now",
        iconData: Icons.wb_cloudy,
        temperature: "15°",
        isSelected: true),
    WeatherModel(time: "2 AM", iconData: Icons.nights_stay, temperature: "13°"),
    WeatherModel(time: "3 AM", iconData: Icons.air, temperature: "11°"),
    WeatherModel(time: "4 AM", iconData: Icons.storm, temperature: "12°"),
    WeatherModel(time: "5 AM", iconData: Icons.tornado, temperature: "15°"),
    WeatherModel(
        time: "6 AM", iconData: Icons.wb_twighlight, temperature: "20°"),
    WeatherModel(time: "7 AM", iconData: Icons.wb_sunny, temperature: "21°"),
    WeatherModel(
        time: "8 AM", iconData: Icons.sunny_snowing, temperature: "23°"),
    WeatherModel(time: "9 AM", iconData: Icons.tsunami, temperature: "25°"),
  ];

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
              child: SizedBox(
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
                    SizedBox(
                      // color: Colors.yellow,
                      height: 132.81,
                      // padding: const EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          weatherData.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 7, left: 7),
                            child: Container(
                                height: 50,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0x33FFFFFF)),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(35),
                                  ),
                                  // color: const Color(0x3348319D),
                                  color: weatherData[index].isSelected
                                      ? const Color(0xFF48319D)
                                      : const Color(0x3348319D),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      weatherData[index].time,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                    Icon(
                                      weatherData[index].iconData,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      weatherData[index].temperature,
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
