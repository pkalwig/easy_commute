import 'package:flutter/material.dart';

import 'package:easy_commute/DTO/topology_versions_dto.dart';
import 'package:easy_commute/widgets/topology_widget.dart';

class TopologyVersionsWidget extends StatelessWidget {
  final TopologyVersionsDTO _topologyVersionsDTO;

  TopologyVersionsWidget(this._topologyVersionsDTO);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _topologyVersionsDTO.topologies.length,
      itemBuilder: (context, index) =>
          TopologyWidget(_topologyVersionsDTO.topologies[index]),
      shrinkWrap: true,
    );
  }
}
