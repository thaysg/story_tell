import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IntroComponents extends StatelessWidget {
  final String storyIntro;
  final AssetImage storyImage;
  //final VoidCallback nextPage;

  const IntroComponents({
    Key key,
    @required this.storyIntro,
    @required this.storyImage,
    /* @required this.nextPage */
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image(image: storyImage),
          SizedBox(
            height: 20,
          ),
          Text(
            storyIntro,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
