import 'package:app/lookbook/views/screens/landing.dart';
import 'package:app/routes/app_routes.gr.dart';
import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  StartApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(  
      title: "Lookbook",
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
  
}