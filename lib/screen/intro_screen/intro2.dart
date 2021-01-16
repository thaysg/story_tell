import 'package:flutter/material.dart';
import 'package:story_tell/screen/intro_screen/components/intro_components.dart';
import 'package:story_tell/screen/intro_screen/intro3.dart';

class IntroScreen2 extends StatefulWidget {
  @override
  _IntroScreen2State createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
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
                    storyImage: AssetImage('images/civilwar-nobg.png'),
                    storyIntro:
                        'But then, civil war comes, and they fall apart, they are'
                        ' no long the Avengers, and divided they will perish.'),
              ),
              FlatButton(
                height: 80,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroScreen3(),
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
            ],
          ),
        ),
      ),
    );
  }
}
