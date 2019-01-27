class TopologyDTO {
  final int versionNumber;
  final String startDate;
  final String endDate;

  TopologyDTO({this.versionNumber, this.startDate, this.endDate});

  factory TopologyDTO.fromJson(Map<String, dynamic> json) {
    return TopologyDTO(
        versionNumber: json['versionNumber'],
        startDate: json['startDate'],
        endDate: json['endDate']);
  }
}
