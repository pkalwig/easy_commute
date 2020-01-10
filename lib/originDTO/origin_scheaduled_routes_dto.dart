import 'package:easy_commute/originDTO/origin_routes_dto.dart';

class OriginScheaduledRoutesDTO {
  final Map<DateTime, OriginRoutesDTO> scheaduledRoutes;

  OriginScheaduledRoutesDTO({this.scheaduledRoutes});

  factory OriginScheaduledRoutesDTO.fromJson(Map<String, dynamic> json) {
    var scheaduledRoutes = Map<DateTime, OriginRoutesDTO>();
    for (var key in json.keys) {
      var newScheaduledRoute = DateTime.parse(key);
      scheaduledRoutes[newScheaduledRoute] = OriginRoutesDTO.fromJson(json[key]);
    }
    return OriginScheaduledRoutesDTO(scheaduledRoutes: scheaduledRoutes);
  }
}