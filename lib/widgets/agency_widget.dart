import 'package:flutter/material.dart';

import 'package:easy_commute/DTO/agency_dto.dart';

import 'package:easy_commute/widgets/home_view.dart';

class AgencyWidget extends StatelessWidget {
  final AgencyDTO _agency;

  AgencyWidget(this._agency);

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text("Name = ${_agency.name}"),
        subtitle: Text("Id = ${_agency.id}"),
        onTap: () {
          //TODO: Save data
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeView()));
        },
      );
}
