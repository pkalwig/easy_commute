import 'package:easy_commute/DTO/agency_dto.dart';

class AgenciesDTO {
  final String lastUpdate;
  final List<AgencyDTO> agencies;

  AgenciesDTO({this.lastUpdate, this.agencies});

  factory AgenciesDTO.fromJson(Map<String, dynamic> json) {
    return AgenciesDTO(
        lastUpdate: json['lastUpdate'],
        agencies: List<Map>.from(json['agency'])
            .map((map) => AgencyDTO.fromJson(map))
            .toList());
  }
}
