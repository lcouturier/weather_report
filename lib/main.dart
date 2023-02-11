import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_report/core/navigation/app_router.dart';

import 'core/injection/injection.dart';

void main() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Weather Report',
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
  }
}
