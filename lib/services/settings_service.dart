import 'dart:async';
import 'dart:convert';

import 'package:easy_commute/DTO/agency_dto.dart';
import 'package:easy_commute/originDTO/origin_agency_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ISettingService {
  Future<AgencyDTO> getAgency();

  Future setAgency(OriginAgencyDTO agencyDTO);
}

class SettingsService implements ISettingService {
  final String savedAgencyPreferenceKey = "preferences.savedAgency";

  @override
  Future<AgencyDTO> getAgency() async {
    final prefs = await getSharedPreferencesInstance();
    final agencyJson = prefs.getString(savedAgencyPreferenceKey);
    final agencyMap = json.decode(agencyJson);
    final agencyDTO = AgencyDTO.fromJson(agencyMap);
    return agencyDTO;
  }

  @override
  Future setAgency(OriginAgencyDTO originAgencyDTO) async {
    final prefs = await getSharedPreferencesInstance();
    final agencyDTO = originAgencyDTO.convertToAgencyDTO();
    final agencyMap = agencyDTO.toJson();
    final agencyJson = json.encode(agencyMap);
    prefs.setString(savedAgencyPreferenceKey, agencyJson);
  }

  Future<SharedPreferences> getSharedPreferencesInstance() async =>
    await SharedPreferences.getInstance();
}
