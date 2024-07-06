// ignore_for_file: avoid_print

import 'package:custom_widget_design/constants/constants.dart';
import 'package:custom_widget_design/state/quiz/quiz_bloc.dart';
import 'package:custom_widget_design/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  QuizBloc? quizBloc;

  @override
  void initState() {
    super.initState();
    final quizBloc = BlocProvider.of<QuizBloc>(context);
    quizBloc.getDataQuiz();
  }

  @override
  Widget build(BuildContext context) {
    final quizBloc = BlocProvider.of<QuizBloc>(context);   

    return Scaffold(
      extendBodyBehindAppBar: true, 
      appBar: AppConstants.customAppBar,
      body: Container(
        color: Colors.orangeAccent,
        width: double.infinity,
        height: double.infinity,
        child: BlocBuilder<QuizBloc, QuizState>(
          builder: (context, state) {
            final model = state.quizzesModel;           

            return Column(
              children: [
                quizBloc.state.quizzesModel == null
                    ? Container(
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      )
                    : CardView(quizzesModel: model!)
              ],
            );
          },
        ),
      ),
    );
  }
}
