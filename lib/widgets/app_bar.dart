


import 'package:custom_widget_design/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppConstants.cardColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )
        )); 
  }
}