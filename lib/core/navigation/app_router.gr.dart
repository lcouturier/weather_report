// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    WeatherListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const WeatherListPage()),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          WeatherListRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [WeatherListPage]
class WeatherListRoute extends PageRouteInfo<void> {
  const WeatherListRoute()
      : super(
          WeatherListRoute.name,
          path: '/',
        );

  static const String name = 'WeatherListRoute';
}
