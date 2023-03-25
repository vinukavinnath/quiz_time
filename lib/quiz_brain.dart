import 'question.dart';

int _queCount=0;

class QuizBrain {
  List<Question> _questionBank = [
    Question(
        q: 'The Great Wall of China is visible from space without aid',
        a: true),
    Question(q: 'The Mona Lisa was painted by Michelangelo', a: false),
    Question(q: 'The Earth\'s core is mainly composed of iron', a: true),
    Question(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Question(q: 'It is illegal to pee in the Ocean in Portugal', a: true),
    Question(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Question(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Question(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Question(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Question(q: 'Google was originally called \"Backrub\".', a: true),
    Question(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Question(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  void increase() {
    if (_queCount < _questionBank.length-1) {

      print(_queCount);
      print(_questionBank.length);
      ++_queCount;
    }else{
    _queCount=0;}
  }

  String getQuestionText() {
    return _questionBank[_queCount].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_queCount].questionAnswer;
  }
}
