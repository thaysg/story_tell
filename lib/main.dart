import 'package:flutter/material.dart';
import 'package:story_tell/screen/splash_screen/my_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'What If Infinity War',
      home: MySplashScreen(),
    );
  }
}
