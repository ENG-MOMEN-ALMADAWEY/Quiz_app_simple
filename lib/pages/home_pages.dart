import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';
import 'package:quiz_app/widgets/begin_quiz_part.dart';
import 'package:quiz_app/widgets/final_score.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int score = 0, index = 0;
  late int answerchosen = -1;
  bool result = true;
  @override
  Widget build(BuildContext context) {
    debugPrint('score: $score');
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text(
      //       "quiz app",
      //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
      //     ),
      //   ),
      //   backgroundColor: const Color.fromARGB(221, 102, 71, 212),
      // ),
      body: SafeArea(
        child: result
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    QuizPart(questionitem: questions[index]),
                    SizedBox(height: 30),
                    Column(
                      children: List.generate(
                        questions[index].answers.length,
                        (answerIndex) => Padding(
                          padding: const EdgeInsets.all(12),
                          child: answer_item(
                            answermap: questions[index].answers[answerIndex],
                            isanswerchosen: answerchosen == answerIndex,
                            quetionindexchange: () {
                              setState(() {
                                answerchosen = answerIndex;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (answerchosen == -1) return;

                          setState(() {
                            score += 10;
                            if (index < questions.length - 1) {
                              index++;
                              answerchosen = -1;
                            } else {
                              result = false;
                            }
                          });
                        },
                        child: Text('Next'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TotalScore(
                    score: score,
                    onpressed: () {
                      setState(() {
                        index = 0;
                        score = 0;
                        result = true;
                        answerchosen = -1;
                      });
                    },
                  ),
                ],
              ),
      ),
      backgroundColor: const Color.fromARGB(255, 213, 215, 221),
    );
  }
}
