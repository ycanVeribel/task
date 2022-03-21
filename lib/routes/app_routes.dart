import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:tasketiya/views/cities/cities_page.dart';
import 'package:tasketiya/views/city_details/city_details_page.dart';

part 'app_routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: CitiesPage, initial: true),
    AutoRoute(page: CityDetailsPage),
  ],
)
class AppRoutes extends _$AppRoutes {}
