// story_brain.dart
import 'story.dart';

class StoryBrain {
  int _storyIndex = 0;

  final List<Story> _storyData = [
    Story(
      storyText: 'You see a fork in the road.',
      choice1: 'Take the left path.',
      choice2: 'Take the right path.',
    ),
    Story(
      storyText: 'You encounter a bear!',
      choice1: 'Run away.',
      choice2: 'Fight the bear.',
    ),
    Story(
      storyText: 'You find a treasure chest!',
      choice1: 'Open it.',
      choice2: 'Leave it alone.',
    ),
  ];

  String getStory() {
    return _storyData[_storyIndex].storyText;
  }

  String getChoice1() {
    return _storyData[_storyIndex].choice1;
  }

  String getChoice2() {
    return _storyData[_storyIndex].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyIndex == 0 && choiceNumber == 1) {
      _storyIndex = 1;
    } else if (_storyIndex == 0 && choiceNumber == 2) {
      _storyIndex = 2;
    } else {
      restart();
    }
  }

  void restart() {
    _storyIndex = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyIndex < _storyData.length - 1;
  }
}
