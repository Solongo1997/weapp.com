import 'package:flutter/material.dart';
import 'package:weatherapp/views/additional.dart';
import 'package:weatherapp/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf9f9f9),
        appBar: AppBar(
          backgroundColor: Color(0xFFf9f9f9),
          elevation: 0.0,
          title: const Text(
            "Weapp",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            currentWeather(Icons.wb_cloudy, "15", "Cloudy"),
            SizedBox(
              height: 60.0,
            ),
            Text(
              "Ulaanbaatar",
              style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xdd212121),
                  fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(
              height: 20.0,
            ),
            additionalInformation("10", "2", "10", "17"),
          ],
        ));
  }
}
