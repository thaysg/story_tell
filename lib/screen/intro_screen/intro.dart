import 'package:flutter/material.dart';
import 'package:story_tell/screen/intro_screen/components/intro_components.dart';
import 'package:story_tell/screen/intro_screen/intro2.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 8,
                child: IntroComponents(
                    storyImage: AssetImage('images/1-nobg.png'),
                    storyIntro:
                        'An age of heroes, for a long time, the Earth\'s '
                        ' Mightiest Heroes, fought side by side against the most terribles'
                        ' threats to earth and the universe.'),
              ),
              Expanded(
                child: FlatButton(
                  height: 80,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IntroScreen2(),
                      ),
                    );
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Regular',
                        letterSpacing: 1.5,
                        wordSpacing: 1.5,
                      ),
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
