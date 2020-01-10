class OriginRouteDTO {
  int routeId;
  int agencyId;
  String routeShortName;
  String routeLongName;
  String routeDesc;
  String routeType;
  String routeUrl;
  String routeColor;
  String routeTextColor;
  DateTime activationDate;

  OriginRouteDTO({
    this.routeId,
    this.agencyId,
    this.routeShortName,
    this.routeLongName,
    this.routeDesc,
    this.routeType,
    this.routeUrl,
    this.routeColor,
    this.routeTextColor,
    this.activationDate,
  });

  factory OriginRouteDTO.fromJson(Map<String, dynamic> json) => OriginRouteDTO(
        routeId: json["routeId"],
        agencyId: json["agencyId"],
        routeShortName: json["routeShortName"],
        routeLongName: json["routeLongName"],
        routeDesc: json["routeDesc"],
        routeType: json["routeType"],
        routeUrl: json["routeUrl"],
        routeColor: json["routeColor"],
        routeTextColor: json["routeTextColor"],
        activationDate: DateTime.parse(json["activationDate"]),
      );
}
