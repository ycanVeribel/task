import 'package:flutter/material.dart';
import 'package:tasketiya/main.dart';

import 'city_details_body.dart';

class CityDetailsPage extends StatelessWidget {
  const CityDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            appRouter.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: const SafeArea(
        child: CityDetailsBody(),
      ),
    );
  }
}
