// ignore_for_file: avoid_print

import 'package:custom_widget_design/widgets/widgets.dart';
import 'package:flutter/material.dart';


class ButtonToCard extends StatelessWidget {


  const ButtonToCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 500,
      left: 50,
      right: 50,
      child: ButtonOptionsInitial(
          iconData: Icons.card_giftcard,
          buttonText: 'IR A CARD',
          onTap: () async {

            Navigator.of(context).pushNamed('educationalCard');            
           
            
          }),
    );
     
    
  }
}

