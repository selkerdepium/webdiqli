import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.endQuiz});

  final List<String> chosenAnswers;
 

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }
  final void Function() endQuiz;
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Odpowiedziałeś poprawnie na $numCorrectQuestions z $numTotalQuestions pytań!',
              style: const TextStyle(color: Color.fromARGB(255, 245, 139, 249), fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
                onPressed: endQuiz,
                icon: const Icon(Icons.restart_alt_rounded),
                label: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
