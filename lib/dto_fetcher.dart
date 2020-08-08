import 'dart:async';
import 'dart:convert';

import 'package:easy_commute/originDTO/origin_agencies_dto.dart';
import 'package:easy_commute/data_fetch_urls.dart';
import 'package:easy_commute/data_fetcher.dart';
import 'package:easy_commute/originDTO/origin_scheduled_routes_dto.dart';

class DtoFetcher {
  final DataFetcher _dataFetcher = DataFetcher();

  Future<OriginAgenciesDTO> fetchAgencies() async {
    OriginAgenciesDTO result;
    try {
      String fetchResult = await _dataFetcher.fetchPost(DataFetchUrl.agencies);
      result = OriginAgenciesDTO.fromJson(json.decode(fetchResult));
    } finally {}
    return result;
  }

  Future<OriginScheduledRoutesDTO> fetchScheduledRoutes() async {
    OriginScheduledRoutesDTO result;
    try {
      String fetchResult = await _dataFetcher.fetchPost(DataFetchUrl.scheaduledRoutes);
      result = OriginScheduledRoutesDTO.fromJson(json.decode(fetchResult));
    } finally {}
    return result;
  }
}
