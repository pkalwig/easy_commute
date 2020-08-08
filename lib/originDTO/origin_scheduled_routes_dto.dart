import 'package:easy_commute/originDTO/origin_routes_dto.dart';

class OriginScheduledRoutesDTO {
  final Map<DateTime, OriginRoutesDTO> scheduledRoutes;

  OriginScheduledRoutesDTO({this.scheduledRoutes});

  factory OriginScheduledRoutesDTO.fromJson(Map<String, dynamic> json) {
    var scheduledRoutes = Map<DateTime, OriginRoutesDTO>();
    for (var key in json.keys) {
      var newScheduledRoute = DateTime.parse(key);
      scheduledRoutes[newScheduledRoute] = OriginRoutesDTO.fromJson(json[key]);
    }
    return OriginScheduledRoutesDTO(scheduledRoutes: scheduledRoutes);
  }
}