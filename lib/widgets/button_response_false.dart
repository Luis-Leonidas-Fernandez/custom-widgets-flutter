// ignore_for_file: avoid_print

import 'package:custom_widget_design/state/quiz/quiz_bloc.dart';
import 'package:custom_widget_design/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonResponseFalse extends StatelessWidget {


  const ButtonResponseFalse({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {

        final response = state.quizzesModel?.preguntas.first.respuestaCorrecta;
        
        return SmallButton(response: response!);
      },
    );
  }
}

class SmallButton extends StatelessWidget {

  final bool response;
  const SmallButton({
    super.key,
    required this.response
  });

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 340,
      left: 170,
      right: 5,
      child: ButtonOptions(
          iconData: Icons.close_rounded,
          buttonText: 'FALSO',
          onTap: () async {

             const value = false;

             if(response == value) {
            Navigator.of(context).pushNamed('successDialog'); 
            }else {
            
           
            Navigator.of(context).pushNamed('errorDialog');
            }
          }),
    );
  }
}
