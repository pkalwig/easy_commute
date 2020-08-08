import 'line_stop_time_dto.dart';

class LineStopTimesDTO {
  final String lastUpdate;
  final List<LineStopTimeDTO> stopTimes;

  LineStopTimesDTO({this.lastUpdate, this.stopTimes});

  factory LineStopTimesDTO.fromJson(Map<String, dynamic> json) =>
      LineStopTimesDTO(
          lastUpdate: json['lastUpdate'],
          stopTimes: List<Map>.from(json['stopTimes'])
              .map((map) => LineStopTimeDTO.fromJson(map))
              .toList());
}
