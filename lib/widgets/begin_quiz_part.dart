import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class QuizPart extends StatelessWidget {
  final QuestionModel questionitem;
  const QuizPart({super.key, required this.questionitem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionitem.title,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: const Color.fromARGB(255, 18, 15, 15),
                ),
              ),
              SizedBox(height: 2),
              Text(
                ' answer & get points',
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
