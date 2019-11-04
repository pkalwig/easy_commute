import 'package:flutter/material.dart';

import 'package:easy_commute/originDTO/origin_agencies_dto.dart';
import 'package:easy_commute/widgets/agency_widget.dart';

class AgenciesWidget extends StatelessWidget {
  final OriginAgenciesDTO _agenciesDto;

  AgenciesWidget(this._agenciesDto);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _agenciesDto.agencies.length,
      itemBuilder: ((context, index) =>
          AgencyWidget(_agenciesDto.agencies[index])),
      separatorBuilder: (context, index) => Divider(),

    );
  }
}