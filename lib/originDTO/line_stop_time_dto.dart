class LineStopTimeDTO {
  final int routeId;
  final int tripId;
  final int agencyId;
  final int topologyVersionId;
  final String arrivalTime;
  final String departureTime;
  final int stopId;
  final int stopSequence;
  final String date;
  final int variantId;
  final String noteSymbol;
  final String noteDescription;
  final String busServiceName;
  final int order;
  final int nonPassenger;
  final int ticketZoneBorder;
  final int onDemand;
  final int virtual;
  final int isLupek;
  final int wheelchairAccessible;
  final String stopShortName;
  final String stopHeadsign;
  final Null pickupType;
  final Null dropOffType;
  final Null shapeDistTraveled;
  final Null timePoint;

  LineStopTimeDTO({this.routeId,
    this.tripId,
    this.agencyId,
    this.topologyVersionId,
    this.arrivalTime,
    this.departureTime,
    this.stopId,
    this.stopSequence,
    this.date,
    this.variantId,
    this.noteSymbol,
    this.noteDescription,
    this.busServiceName,
    this.order,
    this.nonPassenger,
    this.ticketZoneBorder,
    this.onDemand,
    this.virtual,
    this.isLupek,
    this.wheelchairAccessible,
    this.stopShortName,
    this.stopHeadsign,
    this.pickupType,
    this.dropOffType,
    this.shapeDistTraveled,
    this.timePoint});

  factory LineStopTimeDTO.fromJson(Map<String, dynamic> json) =>
      LineStopTimeDTO(
          routeId: json['routeId'],
          tripId: json['tripId'],
          agencyId: json['agencyId'],
          topologyVersionId: json['topologyVersionId'],
          arrivalTime: json['arrivalTime'],
          departureTime: json['departureTime'],
          stopId: json['stopId'],
          stopSequence: json['stopSequence'],
          date: json['date'],
          variantId: json['variantId'],
          noteSymbol: json['noteSymbol'],
          noteDescription: json['noteDescription'],
          busServiceName: json['busServiceName'],
          order: json['order'],
          nonPassenger: json['nonpassenger'],
          ticketZoneBorder: json['ticketZoneBorder'],
          onDemand: json['onDemand'],
          virtual: json['virtual'],
          isLupek: json['islupek'],
          wheelchairAccessible: json['wheelchairAccessible'],
          stopShortName: json['stopShortName'],
          stopHeadsign: json['stopHeadsign'],
          pickupType: json['pickupType'],
          dropOffType: json['dropOffType'],
          shapeDistTraveled: json['shapeDistTraveled'],
          timePoint: json['timepoint']);
}
