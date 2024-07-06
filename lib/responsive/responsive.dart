// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:math';

class Responsive {
  
  final BuildContext context;
  final Size size;
  
  Responsive(this.context) : size = MediaQuery.of(context).size;

  double getResponsiveValue() {

    if (size.width < 600) {
     
      // Para dispositivos pequeños
      return size.width * 0.5;
    } else if (size.width >= 600 && size.width < 1200) {
      // Para dispositivos medianos
      return size.width * 0.7;
    } else {
      // Para dispositivos grandes
      return size.width * 0.8;
    }
  }

  double calculateHypotenuse(double a, double b) {
    
     return sqrt(a * a + b * b);
     
      
  }
}