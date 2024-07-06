import 'package:custom_widget_design/constants/constants.dart';
import 'package:flutter/material.dart';


class ErrorCustomDialog extends StatelessWidget {

  const ErrorCustomDialog({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
           width: 300,
           height: 300,
           decoration: BoxDecoration(
              color: AppConstants.redColor,
              borderRadius: BorderRadius.circular(12),
           ),
           child: Stack(
             children: [

                 buildCheck(),
                 const SizedBox(height: 15),
                 bigTittle(),                 
                 smallTittle(),
                 buttonClose(context)

                 
                 
              ],
              
        
           ),
        ),
      ),
      
    );
    
  }
}



Widget buildCheck(){
  return Align(
    alignment: const Alignment(0.0, -1.5),
    child: Container(
      width: 94,
      height: 80,
      decoration: BoxDecoration(
        color: AppConstants.redColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const CircleAvatar(
        backgroundColor: AppConstants.redColor,
        child: Icon(
          Icons.check_box,
          size: 90,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget bigTittle(){

return Align(
    alignment: const Alignment(0.0, -0.4),
    child: RichText(
        text: TextSpan(
        children: [
          TextSpan(
          text: "F A L L I D O !",
          style: AppConstants.h1
          ),

        ],  
      
    ),
    
    
    ),
  );
}

Widget smallTittle(){

 return Align(
    alignment: const Alignment(0.0, -0.1),
    child: RichText(
        text: TextSpan(
        children: [
          TextSpan(
          text: "Intenta nuevamente por favor !",
          style: AppConstants.h2
          ),

        ],  
      
    ),
    
    
    ),
  ); 
}

Widget buttonClose(BuildContext context){
  return Align(
    alignment: const Alignment(0.0, 0.7),
    child: SizedBox(
      width: 125,
      height: 38,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 240, 160, 160))
        ),
        onPressed: (){
          Navigator.pop(context);
        },
       child: Center(
        child: Text(
          "CERRAR",
          style: AppConstants.h3 
          
          ),
          )
       ),
    ),
  );
}