part of 'quiz_bloc.dart';


abstract class QuizEvent extends Equatable {
  const QuizEvent();

   @override
  List<Object?> get props => [];
}


class AddQuizEvent extends QuizEvent{

  final QuizzesModel quizzesModel;
  const AddQuizEvent(this.quizzesModel);

}