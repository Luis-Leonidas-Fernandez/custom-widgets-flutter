import 'package:custom_widget_design/constants/constants.dart';
import 'package:custom_widget_design/responsive/responsive.dart';
import 'package:flutter/material.dart';

class ButtonOptionsInitial extends StatelessWidget {
  
  const ButtonOptionsInitial({
  super.key,
  required this.iconData,
  required this.buttonText,
  this.onTap 
  });

  final IconData iconData;
  final String buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final responsive  = Responsive(context);
    double catetoA    = responsive.getResponsiveValue();
    double catetoB    = responsive.getResponsiveValue();
    double hipotenusa = responsive.calculateHypotenuse(catetoA, catetoB);
    
    return Center(
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          splashColor: AppConstants.splashColor,
          onTap: onTap,
          child: Container(            
            width:  hipotenusa * 0.70,
            height: hipotenusa * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Row(
              children:  [               
                Container(
                 height: 50,
                 width: 40,
                 color: AppConstants.cardColor,
                 child: Icon( iconData,
                 color: Colors.white,
                 
            )
          ),
          Expanded(child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.indigo,
              fontWeight: FontWeight.bold
            ),
          ))
         ],
        ),
      ),
    )
   )
  );
    
    
    
    
    
    
  }
}