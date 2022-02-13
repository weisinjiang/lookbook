// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:app/lookbook/views/screens/landing.dart' as _i1;
import 'package:app/lookbook/views/screens/looks_screen.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LandingScreenRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.LandingScreen());
    },
    LooksScreenRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.LooksScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(LandingScreenRoute.name, path: '/', fullMatch: true),
        _i3.RouteConfig(LooksScreenRoute.name, path: '/looks/:id')
      ];
}

/// generated route for
/// [_i1.LandingScreen]
class LandingScreenRoute extends _i3.PageRouteInfo<void> {
  const LandingScreenRoute() : super(LandingScreenRoute.name, path: '/');

  static const String name = 'LandingScreenRoute';
}

/// generated route for
/// [_i2.LooksScreen]
class LooksScreenRoute extends _i3.PageRouteInfo<void> {
  const LooksScreenRoute() : super(LooksScreenRoute.name, path: '/looks/:id');

  static const String name = 'LooksScreenRoute';
}
