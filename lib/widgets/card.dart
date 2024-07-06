import 'package:custom_widget_design/constants/constants.dart';
import 'package:custom_widget_design/models/models.dart';
import 'package:custom_widget_design/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  
  final QuizzesModel quizzesModel;
  const CardView({super.key, required this.quizzesModel});

  @override
  Widget build(BuildContext context) {    
   

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        
        margin: const EdgeInsets.only(top: 140, bottom: 290,  ),
        width: double.infinity,
        height: 410,
        decoration: _cardBorders(),
        child: Stack(
          
          children: [

             
             
            _AddressDetails(
              pregunta: quizzesModel.preguntas.first.pregunta,
              area: quizzesModel.preguntas.first.area,                          
              
            ),
            
             
            Align(
               alignment: const Alignment(1.2, -2.0),
              child: Container(               
                height: 230,
                width: 230,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),              
                child: Image.asset(quizzesModel.preguntas.first.imagen),
              ),
            ),           

            const ButtonResponseTrue(),
            const ButtonResponseFalse()
                       
            
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25),
    boxShadow: const [
      BoxShadow(
        color: Colors.black38,
        offset: Offset(0,10),
        blurRadius: 15
      )
    ]
  );
  }

class _AddressDetails extends StatelessWidget {
   
   final String pregunta;
   final String area;   

  const _AddressDetails({
     required this.pregunta,
     required this.area
}); 



  @override
  Widget build(BuildContext context) {

    final preguntaCustom    = pregunta;
    final areaCustom = area.toUpperCase();
     

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(        
        width: double.infinity,
        height: 280,
        color: AppConstants.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
              
          children: [
             
            const SizedBox(height: 70), 

            Align(
              alignment: const Alignment(-0.0, -0.0),
              child: Text(
                'AREA: $areaCustom',
                style: AppConstants.h1,                
                maxLines: 1,
                overflow: TextOverflow.ellipsis,               
              
              ),
            ),
            //const SizedBox(height: 10), 
            
            Align(
              alignment: const Alignment(-0.0, -0.0),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  preguntaCustom,
                  style: AppConstants.h2,                
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,               
                
                ),
              ),
            ),


              
            
          ],
        ),     
      ),
    );
  }
}


