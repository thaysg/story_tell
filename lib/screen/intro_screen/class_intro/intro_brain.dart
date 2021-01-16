import 'package:flutter/material.dart';
import 'package:story_tell/screen/intro_screen/class_intro/class_intro.dart';

class IntroBrain {
  int _introNumber = 0;

  List<IntroClass> _introData = [
    IntroClass(
        introPicture: AssetImage('images/1-nobg.png'),
        introTitle: 'An age of heroes, for a long time, the Earth\'s '
            ' Mightiest Heroes, fought side by side against the most terribles'
            ' threats to earth and the universe.',
        next: 'Next'),
    IntroClass(
        introPicture: AssetImage('images/civilwar-nobg.png'),
        introTitle: 'But then, civil war comes, and they fall apart, they are'
            ' no long the Avengers, and divided they will perish.',
        next: 'Next'),
    IntroClass(
        introPicture: AssetImage('images/thanos.png'),
        introTitle: 'And while they are apart, the greatest threat for the'
            ' universe is come to Earth. His name: Thanos. Are they be'
            ' able to left their differences to defeat him or not? Well,'
            ' it\'s up to you to decide the fate of the humanaty and'
            ' the entirely universe. Choose well.',
        next: 'Next'),
  ];

  String getIntro() {
    return _introData[_introNumber].introTitle;
  }

  AssetImage getIntroImage() {
    return _introData[_introNumber].introPicture;
  }

  String getNext() {
    return _introData[_introNumber].next;
  }
}
