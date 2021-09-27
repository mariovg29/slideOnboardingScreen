import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BotonesRedes extends StatelessWidget {
  const BotonesRedes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

var textStyle2 = TextStyle(
    
  color: Color(0xff527DAA),
  fontSize: 15,
  fontWeight: FontWeight.bold,
  fontFamily: 'Opensans'
  );

  final ButtonStyle style =
  ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(            
      borderRadius: BorderRadius.circular(18.0),      
    )));                         

    return Column(
      children: [
        SizedBox(height: 70,),
        SizedBox(
          width: 300,
          height: 40,
          child: ElevatedButton(
            style: style,                
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(                 
                  height: 35,
                  child: CircleAvatar(                              
                    child: Icon(FontAwesomeIcons.google, color: Colors.white),
                    backgroundColor: Color(0xff4285F4),
                   
          ),
                  ),SizedBox(width: 10,),
         Text('Accede con Google',
                 style: textStyle2,
                   ),
                ]
              ),
              onPressed: (){print('botón google presionado');},
            ),
          ),
           SizedBox(height: 10,),
        SizedBox(
          width: 300,
          height: 40,
          child: ElevatedButton(
            style: style,                
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(                 
                  height: 35,
                  child: CircleAvatar(                              
                    child: Icon(FontAwesomeIcons.facebook, color: Colors.white),
                    backgroundColor: Color(0xff3b5998),
                   
          ),
          
                  ),SizedBox(width: 10,),
         Text('Accede con Facebook',
                 style: textStyle2,
                   ),
                ]
              ),
              onPressed: (){print('Facebook presionado');},
            ),
          ),
          SizedBox(height: 10,),
        SizedBox(
          width: 300,
          height: 40,
          child: ElevatedButton(
            style: style,                
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(                 
                  height: 35,
                  child: CircleAvatar(                              
                    child: Icon(FontAwesomeIcons.envelope, color: Colors.white),
                    backgroundColor: Color(0xFFf6553f),
                   
          ),
          
                  ),SizedBox(width: 10,),
         Text('Accede con tu email',
                 style: textStyle2,
                   ),
                ]
              ),
              onPressed: (){print('botón mail presionado');},
            ),
          ),
      ],

    );
  }
}
 