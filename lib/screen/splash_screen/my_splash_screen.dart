import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:story_tell/screen/intro_screen/intro.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SplashScreen(
            seconds: 3,
            navigateAfterSeconds: IntroScreen(),
            loaderColor: Colors.transparent,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(
                  'images/gauntlet.png',
                ),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Center(
                  child: Text(
                    'WHAT    IF INFINITY WAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.5,
                        letterSpacing: 1.5,
                        wordSpacing: 1.5,
                        fontSize: 50,
                        fontFamily: 'Regular',
                        color: Colors.amber,
                        shadows: [
                          Shadow(
                              blurRadius: 5.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0)),
                        ]),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
