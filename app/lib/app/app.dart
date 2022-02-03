import 'package:app/lookbook/views/screens/landing.dart';
import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      home: LandingScreen(),
    );
  }
  
}