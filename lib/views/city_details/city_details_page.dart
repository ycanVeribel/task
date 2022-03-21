import 'package:flutter/material.dart';

import 'city_details_body.dart';

class CityDetailsPage extends StatelessWidget {
  const CityDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: CityDetailsBody(),
      ),
    );
  }
}
