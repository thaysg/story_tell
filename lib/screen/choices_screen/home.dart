import 'package:flutter/material.dart';
import 'package:story_tell/class/story_brain.dart';

StoryBrain storyBrain = StoryBrain();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 15,
                child: Center(
                  child: Column(
                    children: [
                      Image(
                        image: storyBrain.getImage(),
                        height: 200,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        storyBrain.getStory(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.5,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  color: Colors.red,
                  child: Text(
                    storyBrain.getChoice1(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 18,
                        fontFamily: 'Regular',
                        letterSpacing: 1.5,
                        wordSpacing: 1.5,
                        shadows: [
                          Shadow(
                              blurRadius: 4.0,
                              color: Colors.white,
                              offset: Offset(3.0, 3.0)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 3,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        storyBrain.getChoice2(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontSize: 18,
                            fontFamily: 'Regular',
                            letterSpacing: 1.5,
                            wordSpacing: 1.5,
                            shadows: [
                              Shadow(
                                  blurRadius: 4.0,
                                  color: Colors.white,
                                  offset: Offset(3.0, 3.0)),
                            ]),
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
