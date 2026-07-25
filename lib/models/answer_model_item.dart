import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onpressed;
  AnswerItemModel({required this.onpressed, required this.title});
}
