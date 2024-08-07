import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/constants/app_strings.dart';
import 'package:test_app/features/screen/home/home_screen.dart';
import 'package:test_app/features/screen/splash/view/splash_screen.dart';

class Routes {
  // global routes
  static const String splash = "/";
  static const String home = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // global routes start
      case Routes.splash:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
          settings: routeSettings,
        );

        case Routes.home:
        return CupertinoPageRoute(
          builder: (_) => const HomeScreen(),
          settings: routeSettings,
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return CupertinoPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("No page Found"),
        ),
        body: const Center(
          child: Text("No page Found"),
        ),
      ),
    );
  }
}
