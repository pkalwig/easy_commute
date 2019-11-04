import 'package:easy_commute/services/settings_service.dart';
import 'package:flutter/material.dart';

import 'package:easy_commute/originDTO/origin_agency_dto.dart';

import 'package:easy_commute/views/home_view.dart';

class AgencyWidget extends StatelessWidget {
  final OriginAgencyDTO _agency;

  AgencyWidget(this._agency);

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text("Name = ${_agency.name}"),
        subtitle: Text("Id = ${_agency.id}"),
        onTap: () {
          final settingService = new SettingsService();
          settingService.setAgency(_agency);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeView()));
        },
      );
}
