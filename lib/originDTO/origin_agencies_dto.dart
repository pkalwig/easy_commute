import 'package:easy_commute/originDTO/origin_agency_dto.dart';

class OriginAgenciesDTO {
  final String lastUpdate;
  final List<OriginAgencyDTO> agencies;

  OriginAgenciesDTO({this.lastUpdate, this.agencies});

  factory OriginAgenciesDTO.fromJson(Map<String, dynamic> json) {
    return OriginAgenciesDTO(
        lastUpdate: json['lastUpdate'],
        agencies: List<Map>.from(json['agency'])
            .map((map) => OriginAgencyDTO.fromJson(map))
            .toList());
  }
}
