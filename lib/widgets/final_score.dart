import 'package:flutter/material.dart';

class TotalScore extends StatelessWidget {
  final int score;
  final VoidCallback onpressed;
  const TotalScore({super.key, required this.score, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(' you win your score is '),
          Text('$score'),
          TextButton(onPressed: onpressed, child: Text('Reset Quiz')),
        ],
      ),
    );
  }
}
