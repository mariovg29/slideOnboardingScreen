// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

import 'package:slide_onboarding_screen_flutter/src/screens/login/widgets/background.dart';
import 'package:slide_onboarding_screen_flutter/src/screens/login/widgets/botones_redes.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
int _currentPageIndex=0;

  @override
  Widget build(BuildContext context) {

    
var _text='Cuidamos tus paquetes como nuestros';
var _text2='Entregas garantizadas el mismo día';
var _text3='La mejor tarifa dentro de la ciudad, contamos con seguro!!!';
var _fondo= 'fondo1.jpg';
var _fondo2= 'fondo2.jpg';
var _fondo3= 'fondo3.jpg';


List<Widget> pageList=[
  BackGround(data: _text,fondo: _fondo, ),
  BackGround(data: _text2,fondo: _fondo2,),
  BackGround(data: _text3,fondo: _fondo3,),

];

double height = MediaQuery.of(context).size.height;


    return Scaffold(
      
      backgroundColor: Color(0xFFf6553f),
      body: SafeArea(
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            PageView.builder(
              onPageChanged: (int index){
                setState(() {
                  _currentPageIndex=index % (pageList.length);
                  print('pront$_currentPageIndex');
                });
              },
              itemCount: 10000,
              itemBuilder: (context, index){
                return pageList[index % (pageList.length)];
              },
              ),
               Positioned(
              bottom: height*.35,
              left: 0,
              right: 0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pageList.length, (i) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPageIndex == i
                              ? Color(0xFFf6553f)
                              : Colors.white),
                    );
                  }).toList(),
                ),
              ),
            ),

              
            // PageView(
            //   clipBehavior: Clip.hardEdge,
            //   onPageChanged: (int index){
            //     setState(() {
            //        _currentPageIndex= index ;
            //        print(index);
                  
                  
            //     });
               

            //   },
            //   controller: PageController(
               
            //     initialPage: 0,
                  
            //   ),
            //   physics: BouncingScrollPhysics(),
            //   children: [
            //     BackGround(data: _text,fondo: _fondo, currentPage: _currentPageIndex),
            //     BackGround(data: _text2,fondo: _fondo2,currentPage: _currentPageIndex),
            //     BackGround(data: _text3,fondo: _fondo3,currentPage: _currentPageIndex),

            //   ],
            // ),
            
            Contenido(),


          ],
        ),
        

      ),
      
    );
  }
}


class Contenido extends StatelessWidget {
  const Contenido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
         child: Column(
           children: [
             Expanded(child: Container(width: double.infinity,),),
             Container(
               height: height*.3,
               width: double.infinity,
               child: Column(
                 // ignore: prefer_const_literals_to_create_immutables
                 children: [
                  
                   BotonesRedes(),
                 ],
               ),
             )
           ],
           
         ),
          
        );
          
       
    
    
  }
}





    
  
  



