import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model_item.dart';

class QuestionModel {
  final String title;
  final List<AnswerItemModel> answers;

  QuestionModel({required this.title, required this.answers});
}

List<QuestionModel> questions = [
  QuestionModel(
    title: 'what is your favourite sport ?',
    answers: [
      AnswerItemModel(
        onpressed: () {
          debugPrint('volley ball');
        },
        title: "volley ball",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('basket ball');
        },
        title: "basket ball",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('foot ball');
        },
        title: "foot ball",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('tennis ');
        },
        title: "tennis ",
      ),
    ],
  ),
  QuestionModel(
    title: 'what is your favourite animal?',
    answers: [
      AnswerItemModel(
        onpressed: () {
          debugPrint('lion ');
        },
        title: "lion ",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('elephant ');
        },
        title: "elephant ",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('monkey ');
        },
        title: "monkey ",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('horse ');
        },
        title: "horse ",
      ),
    ],
  ),
  QuestionModel(
    title: 'what is your favourite fruit ?',
    answers: [
      AnswerItemModel(
        onpressed: () {
          debugPrint('banana ');
        },
        title: " banana",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('watermellon ');
        },
        title: " watermellon",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('orange ');
        },
        title: " orange",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('apple ');
        },
        title: " apple",
      ),
    ],
  ),
  QuestionModel(
    title: 'what is your favourite sandwich?',
    answers: [
      AnswerItemModel(
        onpressed: () {
          debugPrint('Chicken sandwich ');
        },
        title: "Chicken sandwich ",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('beef sandwich ');
        },
        title: "beef sandwich ",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('cheese sandwich ');
        },
        title: "cheese sandwich ",
      ),
      AnswerItemModel(
        onpressed: () {
          debugPrint('tuna sandwich ');
        },
        title: " tuna sandwich ",
      ),
    ],
  ),
];
