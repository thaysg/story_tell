import 'package:flutter/material.dart';
import 'package:story_tell/class/story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
      picture: AssetImage('images/hulk_strange-removebg-preview.png'),
      storyTitle:
          'After years lost in another planet, Hulk returns to earth, and falls'
          ' at Doctor Strange House, and says that Thanos is coming.'
          'What do you do?',
      choice1: 'We go ask help to Tony',
      choice2: 'Doctor Strange brings throug magic Steve and Tony to his place'
          '  to tell about Thanos',
    ),
    Story(
      picture: AssetImage('images/civilwar-nobg.png'),
      storyTitle:
          'After 10 minutes, Steve and Tony are arguing who is right and wrong,'
          ' then a warcraft arrives on earth, and they just stop to fight each other'
          'and start to fight the aliens',
      choice1:
          'They start the fight and realize it\'s a better idea to fight Thanos'
          ' before he arrives to earth.',
      choice2:
          'They realize that they are doom if they don\'t get all the Avengers'
          ' together, so Steve call the rest of the team.',
    ),
    Story(
      picture: AssetImage('images/iron_man.png'),
      storyTitle:
          'Tony agrees to help them, but rebember them that there\'s no more'
          ' Avengers, just them.',
      choice1: 'Agrees to Tony, because, well, he is Tony Stark, The Iron Man',
      choice2:
          'Argue with him, that is not the best option, there\'s a lot of lives'
          'in danger, and they need to work together',
    ),
    Story(
      picture: AssetImage('images/civilwar-nobg.png'),
      storyTitle:
          'Well, you decided that didn\'t need the team anymore, so now you have'
          ' to face the Endagame',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      picture: AssetImage('images/1-nobg.png'),
      storyTitle:
          'Well, you decided to leave your differences apart, and assemble the'
          ' Avengers more onde again, stopping Thanos to have his victory to the'
          ' whole universe to face the Endagame',
      choice1: 'Restart',
      choice2: '',
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  AssetImage getImage() {
    return _storyData[_storyNumber].picture;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 ||
            _storyNumber == 1 ||
            _storyNumber ==
                2 /*  ||
             ||
            _storyNumber == 4 */
        /* ||
        _storyNumber == 3 ||
        _storyNumber == 4 */
        ) {
      return true;
    } else {
      return false;
    }
  }
}
