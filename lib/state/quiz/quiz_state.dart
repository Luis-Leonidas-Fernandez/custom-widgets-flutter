part of 'quiz_bloc.dart';

class QuizState  extends Equatable{

  final QuizzesModel? quizzesModel;

  const QuizState({
    this.quizzesModel
  });

  QuizState copyWith({
    QuizzesModel? quizzesModel

  }) 
  => QuizState(quizzesModel: quizzesModel?? quizzesModel);


   @override
  List<Object?> get props => [quizzesModel];

}


