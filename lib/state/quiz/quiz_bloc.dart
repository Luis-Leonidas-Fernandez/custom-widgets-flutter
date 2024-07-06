// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:custom_widget_design/models/models.dart';
import 'package:custom_widget_design/service/quizzes_service.dart';
import 'package:equatable/equatable.dart';


part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  
  QuizzesService quizzesService;

  QuizBloc({required this.quizzesService}) : super(const QuizState()) {

    on<AddQuizEvent>((event, emit) {
      emit(state.copyWith(
        quizzesModel: event.quizzesModel
      ));
    });

    
  }

  Future getDataQuiz() async {

    try {

      final result = await quizzesService.getQuizzes();

      if(result.preguntas.isNotEmpty) { 

        add(AddQuizEvent(result));
        return result;
      }

      return result;

    } catch (e) {

      print("ERROR EN LA REQUEST: $e");
    }
    

    
  }
}
