import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model_item.dart';

class answer_item extends StatelessWidget {
  final AnswerItemModel answermap;
  final VoidCallback quetionindexchange;
  final bool isanswerchosen;

  const answer_item({
    super.key,
    required this.answermap,
    required this.quetionindexchange,
    required this.isanswerchosen,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            answermap.onpressed();
            quetionindexchange();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: isanswerchosen ? Colors.green : Colors.white,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 12),
                  Text(
                    answermap.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isanswerchosen ? Colors.green : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // child: Padding(
        //   padding: const EdgeInsets.all(5.0),
        //   child: ElevatedButton(
        //     onPressed: () {
        //     },
        //     child: Text(answermap.title, style: TextStyle()),
        //   ),
        // ),
      ),
    );
  }
}
