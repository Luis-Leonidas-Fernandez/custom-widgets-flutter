import 'package:custom_widget_design/models/models.dart';
import 'package:flutter/services.dart';
import 'dart:convert';


class UserService {

  
  Future<UsersModel> getQuizzes() async {

  final String response = await rootBundle.loadString('assets/users.json');
  final data = await json.decode(response);
  
  // ignore: avoid_print
  print("USERS RESPONSE: $data"); 
  
  return data;

 } 
}