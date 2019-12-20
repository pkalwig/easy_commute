import 'dart:async';
import 'dart:convert';

import 'package:easy_commute/DTO/agency_dto.dart';
import 'package:easy_commute/originDTO/origin_agency_dto.dart';
import 'package:easy_commute/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ISettingService {
  Future<AgencyDTO> getAgency();

  Future<bool> isFirstRun();

  Future setAgency(OriginAgencyDTO agencyDTO);
}

class SettingsService implements ISettingService {
  @override
  Future<AgencyDTO> getAgency() async {
    final prefs = await getSharedPreferencesInstance();
    final agencyJson = prefs.getString(SharedPreferencesKeys.savedAgency);
    if (agencyJson == null) {
      return null;
    }
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
    prefs.setString(SharedPreferencesKeys.savedAgency, agencyJson);
  }

  Future<SharedPreferences> getSharedPreferencesInstance() async =>
      await SharedPreferences.getInstance();

  @override
  Future<bool> isFirstRun() async {
    final agency = getAgency();
    bool isFirstRun;
    if (agency == null) {
      isFirstRun = true;
    } else {
      isFirstRun = false;
    }
    return isFirstRun;
  }
}
