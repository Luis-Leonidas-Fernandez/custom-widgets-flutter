// ignore_for_file: avoid_print

import 'package:custom_widget_design/widgets/widgets.dart';
import 'package:flutter/material.dart';


class ButtonToProgessIndicator extends StatelessWidget {


  const ButtonToProgessIndicator({super.key});

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 378,
      left: 50,
      right: 50,
      child: ButtonOptionsInitial(
          iconData: Icons.drag_indicator,
          buttonText: 'IR A INDICATOR',
          onTap: () async {

            Navigator.of(context).pushNamed('circularProgress');            
           
            
          }),
    );
     
    
  }
}

