import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_onboarding_screen_flutter/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFf6553f),
      statusBarColor: Color(0xFFf6553f)
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'login',
      routes: getApplicationRoutes(),
      title: 'OnBoardingScreen',
      
    );
  }
}