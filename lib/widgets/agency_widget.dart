import 'package:flutter/material.dart';

import 'package:easy_commute/DTO/agency_dto.dart';
import 'package:easy_commute/widgets/topology_versions_widget.dart';

class AgencyWidget extends StatelessWidget {
  final AgencyDTO _agency;

  AgencyWidget(this._agency);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text("${_agency.id}"),
      Text(_agency.name),
      TopologyVersionsWidget(_agency.topologyVersions)
    ]);
  }
}