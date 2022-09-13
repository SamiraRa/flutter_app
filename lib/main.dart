import 'package:flutter/material.dart';
import 'package:gaming_streaming/UI/ac_series_list.dart';
import 'package:gaming_streaming/UI/hitman_series.dart';
import 'package:gaming_streaming/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
