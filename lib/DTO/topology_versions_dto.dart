import 'package:easy_commute/DTO/topology_dto.dart';

class TopologyVersionsDTO {
  final List<TopologyDTO> topologies;

  TopologyVersionsDTO({this.topologies});

  factory TopologyVersionsDTO.fromJson(Map<String, dynamic> json) {
    return TopologyVersionsDTO(
        topologies: List<Map>.from(json['topologies'])
            .map((map) => TopologyDTO.fromJson(map))
            .toList());
  }
}
