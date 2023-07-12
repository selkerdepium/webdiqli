import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TloContainer extends StatelessWidget {
  const TloContainer(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255), // przezroczystość ->
          //-> albo tutaj albo za pomocą Opacity
        ),
        // Opacity(
        //   opacity: 0.6,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Naucz się Fluttera na wesoło!',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 28),
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          
          style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 221, 119),
              textStyle: const TextStyle(fontSize: 20)),
          icon: const Icon(Icons.arrow_circle_right_outlined),
          label: const Text('Start quiz'),
        ),
      ],
    ));
  }
}
