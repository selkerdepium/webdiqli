import 'package:adv_basic/answer_button.dart';
import 'package:adv_basic/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);
    //currentQuestionIndex = currentQuestionIndex +1;  #Długa wersja
    //currentQuestionIndex += 1;  # robi to samo co kod wyżej
    setState(() {
      currentQuestionIndex ++; // setState mówi, że Widget build musi się wykonać jeszcze raz
    }); //jeszcze krótszy kod na zwiększenie o jeden(tylko o jeden!)
  } 
  

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    
    return SizedBox(
      width: double.infinity,
      child: Container(margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 189, 252),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer){ /// dynamiczne wstawianie przycisków, map robi widżety z listy a trzy kropki wyciągają je na wartości
              return AnswerButton(answerText: answer, onTap: (){
                answerQuestion(answer);
                });
                
            }),
            ],
        ),
      ),
    );
  }
}
