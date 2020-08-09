import 'origin_line_stop_time_dto.dart';

class OriginLineStopTimesDTO {
  final String lastUpdate;
  final List<OriginLineStopTimeDTO> stopTimes;

  OriginLineStopTimesDTO({this.lastUpdate, this.stopTimes});

  factory OriginLineStopTimesDTO.fromJson(Map<String, dynamic> json) =>
      OriginLineStopTimesDTO(
          lastUpdate: json['lastUpdate'],
          stopTimes: List<Map>.from(json['stopTimes'])
              .map((map) => OriginLineStopTimeDTO.fromJson(map))
              .toList());
}
