import 'package:flutter/material.dart';
import 'package:story_tell/screen/choices_screen/home.dart';
import 'package:story_tell/screen/intro_screen/components/intro_components.dart';

class IntroScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IntroComponents(
                  storyImage: AssetImage('images/thanos96.png'),
                  storyIntro:
                      'And while they are apart, the greatest threat for the'
                      ' universe is come to Earth. His name: Thanos. Are they be'
                      ' able to left their differences to defeat him or not? Well,'
                      ' it\'s up to you to decide the fate of the humanaty and'
                      ' the entirely universe. Choose well.'),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                height: 80,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                color: Colors.green,
                textColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Regular',
                      letterSpacing: 1.5,
                      wordSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
