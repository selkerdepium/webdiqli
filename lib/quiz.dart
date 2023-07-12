import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/questions_screen.dart';
import 'package:adv_basic/results_screen.dart';
import 'package:adv_basic/tlo_container.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }


  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }
   void backScreen(){
    setState(() {
      activeScreen = 'end-screen';
      selectedAnswers = [];
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = TloContainer(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }

    // final screenWidget = activeScreen == 'start-screen'
    //           ? TloContainer(switchScreen)
    //           : const QuestionScreen();

    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, endQuiz: backScreen);
    }
        
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 80, 22, 125),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          // child: activeScreen == 'start-screen'
          //     ? TloContainer(switchScreen)
          //     : const QuestionScreen(),
        ),
      ),
    );
  }
}