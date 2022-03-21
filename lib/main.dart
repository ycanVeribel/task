import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasketiya/blocs/cities/bloc/cities_bloc.dart';
import 'package:tasketiya/blocs/city_details/bloc/city_details_bloc.dart';
import 'package:tasketiya/views/cities/cities_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CitiesBloc()..add(LoadCities()),
          ),
          BlocProvider(
            create: (context) => CityDetailsBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: const TextTheme(
              subtitle1: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFF3F4254),
                fontSize: 14.0,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle2: TextStyle(
                color: Colors.blue,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          home: const CitiesPage(),
        ));
  }
}
