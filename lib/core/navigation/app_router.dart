import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weather_report/presentation/weather_list/weather_list_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // .../start/
    AutoRoute(page: WeatherListPage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
