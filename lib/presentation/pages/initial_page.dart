
import 'package:custom_widget_design/constants/constants.dart';
import 'package:custom_widget_design/widgets/button_Indicator.dart';
import 'package:custom_widget_design/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {

  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       backgroundColor: AppConstants.splashColor,
       body: Stack(
        children: [
             
             ButtonToProgessIndicator(),
             ButtonToHome(),
             ButtonToCard(),
             
        ],
       ),
    );
  }
}