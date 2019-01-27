import 'package:flutter/material.dart';

import 'package:easy_commute/DTO/topology_dto.dart';

class TopologyWidget extends StatelessWidget {
  final TopologyDTO _topologyDTO;

  TopologyWidget(this._topologyDTO);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("${_topologyDTO.versionNumber}"),
        Text(_topologyDTO.startDate),
        Text(_topologyDTO.endDate)
      ],
    );
  }
}