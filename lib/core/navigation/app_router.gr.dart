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
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    WeatherListRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherListRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: WeatherListPage(
          key: args.key,
          name: args.name,
        )),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        RouteConfig(
          WeatherListRoute.name,
          path: '/weather-list-page',
        ),
      ];
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [WeatherListPage]
class WeatherListRoute extends PageRouteInfo<WeatherListRouteArgs> {
  WeatherListRoute({
    Key? key,
    required String name,
  }) : super(
          WeatherListRoute.name,
          path: '/weather-list-page',
          args: WeatherListRouteArgs(
            key: key,
            name: name,
          ),
        );

  static const String name = 'WeatherListRoute';
}

class WeatherListRouteArgs {
  const WeatherListRouteArgs({
    this.key,
    required this.name,
  });

  final Key? key;

  final String name;

  @override
  String toString() {
    return 'WeatherListRouteArgs{key: $key, name: $name}';
  }
}
