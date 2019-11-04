class OriginTopologyDTO {
  final int versionNumber;
  final String startDate;
  final String endDate;

  OriginTopologyDTO({this.versionNumber, this.startDate, this.endDate});

  factory OriginTopologyDTO.fromJson(Map<String, dynamic> json) {
    return OriginTopologyDTO(
        versionNumber: json['versionNumber'],
        startDate: json['startDate'],
        endDate: json['endDate']);
  }
}
