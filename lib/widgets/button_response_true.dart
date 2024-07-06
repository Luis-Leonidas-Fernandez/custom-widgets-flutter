// ignore_for_file: avoid_print

import 'package:custom_widget_design/state/quiz/quiz_bloc.dart';
import 'package:custom_widget_design/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonResponseTrue extends StatelessWidget {
  const ButtonResponseTrue({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {
        
        final response = state.quizzesModel?.preguntas.first.respuestaCorrecta;
       
        return ShortButton(response: response!);
      },
    );
  }
}

class ShortButton extends StatelessWidget {

  final bool response;
  
  const ShortButton({
    super.key,
    required this.response
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 340,
      left: 5,
      right: 170,
      child: ButtonOptions(
          iconData: Icons.check_circle,
          buttonText: 'VERDADERO',
          onTap: () async {
             
            const value = true; 

            if(response == value) {
            Navigator.of(context).pushNamed('successDialog'); 
            }else {
            
           
            Navigator.of(context).pushNamed('errorDialog');
            }

            

            
          }),
    );
  }
}
