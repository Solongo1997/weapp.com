import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 100,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "$temp",
        style: TextStyle(
fontSize: 18.0,
color: Color(0xFF5a5a5a),
        ),
        ),
      ],
    ),
  );
}
