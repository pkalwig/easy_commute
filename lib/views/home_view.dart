import 'package:easy_commute/DTO/agency_dto.dart';
import 'package:flutter/material.dart';

import 'package:easy_commute/services/settings_service.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder<AgencyDTO>(
            future: SettingsService().getAgency(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              }
              else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              }
              return Center(child: CircularProgressIndicator());
            },
          )
        ),
      ),
    );
}
