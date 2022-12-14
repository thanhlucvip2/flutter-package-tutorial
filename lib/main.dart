import 'package:flutter/material.dart';
import 'package:flutter_package_of_the_day/widgets/avatar_glow/avatar_glow.dart';
import 'package:flutter_package_of_the_day/widgets/cube_swipe/cube-swipe.dart';
import 'package:flutter_package_of_the_day/widgets/fancy_pull_refresh_page/refresh_page.dart';
import 'package:flutter_package_of_the_day/widgets/google_font/google_font.dart';
import 'package:flutter_package_of_the_day/widgets/percent_indicator_chart/percent_indicator.dart';
import 'package:flutter_package_of_the_day/widgets/smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SmoothPageIndicatorWidget(),
    );
  }
}
