import 'package:easy_commute/originDTO/origin_route_dto.dart';

class OriginRoutesDTO {
  final DateTime lastUpdate;
  final List<OriginRouteDTO> routes;

  OriginRoutesDTO({this.lastUpdate, this.routes});

  factory OriginRoutesDTO.fromJson(Map<String, dynamic> json) =>
      OriginRoutesDTO(
          lastUpdate: DateTime.parse(json["lastUpdate"]),
          routes: List<Map>.from(json['routes'])
              .map((map) => OriginRouteDTO.fromJson(map))
              .toList());
}
