import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

//function wiht only one expression
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questionIndex = 0;

    void answerQuestion() {
      questionIndex = questionIndex + 1;
      print('Answer chosen!');
    }

    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal? '
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ..
                print('chosen 3!');
                // ....
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
home: Text('Hello 122'),
 */
