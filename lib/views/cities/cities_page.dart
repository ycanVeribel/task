import 'package:flutter/material.dart';
import 'cities_list.dart';
import 'cities_search_bar.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const [
          CitiesSearchBar(),
          CitiesList(),
        ],
      )),
    );
  }
}
