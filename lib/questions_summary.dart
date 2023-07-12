import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    var colorPkt = const Color.fromARGB(255, 97, 139, 30);
    

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            if (data['user_answer'] == data['correct_answer']) {
              colorPkt = const Color.fromARGB(255, 105, 195, 254);
            } else {
              colorPkt = const Color.fromARGB(255, 233, 119, 237);
            }
            return Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: ShapeDecoration(
                      color: colorPkt,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        data['question'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 175, 175, 175)),
                      ),
                      Text(data['correct_answer'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 128, 211, 247))),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
