import 'dart:math';

import 'package:easy_commute/DTO/agency_dto.dart';
import 'package:easy_commute/originDTO/origin_topology_versions_dto.dart';

class OriginAgencyDTO {
  final int id;
  final String name;
  final String url;
  final String timezone;
  final String lang;
  final String phone;
  final String fareUrl;
  final String email;
  final OriginTopologyVersionsDTO topologyVersions;

  OriginAgencyDTO(
      {this.id,
      this.name,
      this.url,
      this.timezone,
      this.lang,
      this.phone,
      this.fareUrl,
      this.email,
      this.topologyVersions});

  factory OriginAgencyDTO.fromJson(Map<String, dynamic> json) => OriginAgencyDTO(
      id: json['agencyId'],
      name: json['agencyName'],
      url: json['agencyUrl'],
      timezone: json['agencyTimezone'],
      lang: json['agencyLang'],
      phone: json['agencyPhone'],
      fareUrl: json['agencyFareUrl'],
      email: json['agencyEmail'],
      topologyVersions: OriginTopologyVersionsDTO.fromJson(json['topologyVersions']));

  AgencyDTO convertToAgencyDTO() => AgencyDTO(
      id: id,
      name: name,
      url: url,
      timezone: timezone,
      lang: lang,
      phone: phone,
      fareUrl: fareUrl,
      email: email);
}
