import 'package:flutter/material.dart';
import 'package:tasketiya/views/widgets/title_text.dart';
import 'package:tasketiya/views/widgets/value_text.dart';

import '../../models/models_barrel.dart';

class CityDetailsCard extends StatelessWidget {
  final void Function()? onTap;
  final rowMainAxisAlignment = MainAxisAlignment.spaceBetween;
  final rowHeightSpaceBlock = 2.0;
  final CityDetails? data;
  const CityDetailsCard({Key? key, this.onTap, @required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      color: Colors.white,
      elevation: 5.0,
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildChildren(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildChildren() {
    var children = <Widget>[
      _buildDivisionName(),
      _buildCityName(),
      _buildCurrency(),
      _buildCityCode(),
      _buildTimeZone(),
      _buildPopulation(),
      _latitudeAndLongitude(),
    ];
    return children;
  }

  Widget _buildRow(
      {required Widget firstWidget, required Widget secondWidget}) {
    return Row(
      mainAxisAlignment: rowMainAxisAlignment,
      children: [
        Expanded(flex: 2, child: firstWidget),
        Expanded(flex: 2, child: secondWidget),
      ],
    );
  }

  Widget _buildDivisionName() {
    return _buildRow(
      firstWidget: const TitleText("Division Name"),
      secondWidget: ValueText("${data?.division?.name}"),
    );
  }

  Widget _buildCityName() {
    return _buildRow(
      firstWidget: const TitleText("Name"),
      secondWidget: ValueText("${data?.name}"),
    );
  }

  Widget _buildCurrency() {
    return _buildRow(
      firstWidget: const TitleText("Currency"),
      secondWidget:
          ValueText("${data?.currency?.name} ${data?.currency?.code}"),
    );
  }

  Widget _buildCityCode() {
    return _buildRow(
      firstWidget: const TitleText("City Code"),
      secondWidget: ValueText("${data?.division?.code}"),
    );
  }

  Widget _buildPopulation() {
    return _buildRow(
      firstWidget: const TitleText("Population"),
      secondWidget: ValueText("${data?.population}"),
    );
  }

  Widget _buildTimeZone() {
    return _buildRow(
      firstWidget: const TitleText("Time Zone"),
      secondWidget:
          ValueText("${data?.timezone?.timezone} / ${data?.timezone?.code}"),
    );
  }

  Widget _latitudeAndLongitude() {
    return _buildRow(
      firstWidget: const TitleText("Latitude / Longitude"),
      secondWidget: ValueText("${data?.latitude} / ${data?.longitude}"),
    );
  }
}
