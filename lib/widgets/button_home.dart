
// ignore_for_file: avoid_print

import 'package:custom_widget_design/widgets/widgets.dart';
import 'package:flutter/material.dart';


class ButtonToHome extends StatelessWidget {


  const ButtonToHome({super.key});

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 440,
      left: 50,
      right: 50,
      child: ButtonOptionsInitial(
          iconData: Icons.home,
          buttonText: 'IR A HOME',
          onTap: () async {

            Navigator.of(context).pushNamed('home');            
           
            
          }),
    );
     
    
  }
}

