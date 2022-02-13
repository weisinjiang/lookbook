import 'package:app/lookbook/views/screens/landing.dart';
import 'package:app/lookbook/views/screens/looks_screen.dart';
import 'package:app/lookbook/views/widgets/look_canvas.dart';
import 'package:auto_route/annotations.dart';

@AdaptiveAutoRouter (
  routes: <AutoRoute>[
    AutoRoute(  
      page: LandingScreen,
      initial: true,
      path: LandingScreen.path,
      fullMatch: true
    ),
    AutoRoute(
      page: LooksScreen,
      path: "${LooksScreen.path}/:id"
    )
  ]
)
class $AppRouter{}