// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_routes.dart';

class _$AppRoutes extends RootStackRouter {
  _$AppRoutes([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CitiesPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CitiesPage());
    },
    CityDetailsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CityDetailsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(CitiesPageRoute.name, path: '/'),
        RouteConfig(CityDetailsPageRoute.name, path: '/city-details-page')
      ];
}

/// generated route for
/// [CitiesPage]
class CitiesPageRoute extends PageRouteInfo<void> {
  const CitiesPageRoute() : super(CitiesPageRoute.name, path: '/');

  static const String name = 'CitiesPageRoute';
}

/// generated route for
/// [CityDetailsPage]
class CityDetailsPageRoute extends PageRouteInfo<void> {
  const CityDetailsPageRoute()
      : super(CityDetailsPageRoute.name, path: '/city-details-page');

  static const String name = 'CityDetailsPageRoute';
}
