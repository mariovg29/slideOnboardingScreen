 import 'package:flutter/cupertino.dart';
import 'package:slide_onboarding_screen_flutter/src/screens/login/login_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String,WidgetBuilder>{
    'login' : (BuildContext context)=>LoginScreen(), 
  };


}