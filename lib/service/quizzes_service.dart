// ignore_for_file: avoid_print

import 'package:custom_widget_design/models/models.dart';
import 'package:flutter/services.dart';


class QuizzesService {


 Future<QuizzesModel> getQuizzes() async {

  final String response = await rootBundle.loadString('assets/quizzes.json');

  final result = QuizzesModel.fromJson(response); 
  
  return result;

 } 
}