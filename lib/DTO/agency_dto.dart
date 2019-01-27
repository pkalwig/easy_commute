import 'package:easy_commute/DTO/topology_versions_dto.dart';

class AgencyDTO {
  final int id;
  final String name;
  final String url;
  final String timezone;
  final String lang;
  final String phone;
  final String fareUrl;
  final String email;
  final TopologyVersionsDTO topologyVersions;

  AgencyDTO(
      {this.id,
      this.name,
      this.url,
      this.timezone,
      this.lang,
      this.phone,
      this.fareUrl,
      this.email,
      this.topologyVersions});

  factory AgencyDTO.fromJson(Map<String, dynamic> json) {
    return AgencyDTO(
        id: json['agencyId'],
        name: json['agencyName'],
        url: json['agencyUrl'],
        timezone: json['agencyTimezone'],
        lang: json['agencyLang'],
        phone: json['agencyPhone'],
        fareUrl: json['agencyFareUrl'],
        email: json['agencyEmail'],
        topologyVersions:
            TopologyVersionsDTO.fromJson(json['topologyVersions']));
  }
}
