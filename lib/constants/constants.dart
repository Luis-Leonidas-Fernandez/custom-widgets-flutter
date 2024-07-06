
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants{

  AppConstants._();

  static const Color redColor    =  Color.fromARGB(255, 243, 44, 30);
  static const Color yellowColor =  Color.fromARGB(255, 243, 221, 26);
  static const Color greenColor  =  Color.fromARGB(255, 51, 241, 58);
  static const Color lightGreenColor  =  Color.fromARGB(255, 186, 248, 188);
  static const Color blueColor   =  Color.fromARGB(255, 20, 144, 245);
  static const Color cardColor   =  Color.fromARGB(255, 118, 20, 245);
  static const Color splashColor =  Color.fromARGB(255, 174, 120, 245);
  
  static final h1 = GoogleFonts.roboto(textStyle: const TextStyle(
  color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold));

  static final h2 = GoogleFonts.roboto(color: Colors.white, fontSize: 20);
  static final h3 = GoogleFonts.roboto(color: Colors.white, fontSize: 18);
  static final h4 = GoogleFonts.roboto(textStyle: const TextStyle(
  color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold));
  static final h5 = GoogleFonts.roboto(textStyle: const TextStyle(
  color: splashColor, fontSize: 15));
  static final h6 = GoogleFonts.roboto(textStyle: const TextStyle(
  color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold));

  static final customAppBar = AppBar(
        backgroundColor: AppConstants.cardColor,
        elevation: 0,       
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        )
        ), 
        title: Center(
          child: Text('B I E N V E N I D O',
          style: GoogleFonts.roboto(textStyle: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          
        ),

      ));

}