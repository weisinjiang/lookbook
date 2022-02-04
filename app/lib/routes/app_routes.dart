import 'package:app/lookbook/views/screens/landing.dart';
import 'package:auto_route/annotations.dart';

@AdaptiveAutoRouter (
  routes: <AutoRoute>[
    AutoRoute(  
      page: LandingScreen,
      initial: true,
      path: LandingScreen.path,
    )
  ]
)
class $AppRouter{}