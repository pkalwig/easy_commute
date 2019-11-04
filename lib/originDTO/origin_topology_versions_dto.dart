import 'package:easy_commute/originDTO/origin_topology_dto.dart';

class OriginTopologyVersionsDTO {
  final List<OriginTopologyDTO> topologies;

  OriginTopologyVersionsDTO({this.topologies});

  factory OriginTopologyVersionsDTO.fromJson(Map<String, dynamic> json) {
    return OriginTopologyVersionsDTO(
        topologies: List<Map>.from(json['topologies'])
            .map((map) => OriginTopologyDTO.fromJson(map))
            .toList());
  }
}
