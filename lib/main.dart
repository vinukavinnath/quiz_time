import "package:flutter/material.dart";
import 'quiz_brain.dart';

QuizBrain quizBrain=QuizBrain();

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {


  //Set of Lists will go here!

  List<Icon> result = [
    Icon(Icons.check, color: Colors.black),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 10,
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (quizBrain.getQuestionAnswer()==true){
                        print("Correct");
                        result.add(
                          Icon(Icons.check, color: Colors.green),
                        );
                      }else{
                        print("Incorrect");
                        result.add(
                          const Icon(Icons.close, color: Colors.red),
                        );
                      }
                      quizBrain.increase();
                    });
                  },
                  child: const Card(
                    margin: EdgeInsets.all(8),
                    child: Center(
                      child:Text(
                        "True",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    // width: double.infinity,
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (quizBrain.getQuestionAnswer()==false){
                        print("Correct");
                        result.add(
                          const Icon(Icons.check, color: Colors.green),
                        );
                      }else{
                        print("Incorrect");
                        result.add(
                          const Icon(Icons.close, color: Colors.red),
                        );
                      }
                      quizBrain.increase();
                    });
                  },
                  child: const Card(
                    margin: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        "False",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    // width: double.infinity,
                    color: Colors.red,
                  ),
                ),
              ),
              Row(
                children: result,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO Add Sounds
//TODO Add Popups
//TODO Add Popup Screen

