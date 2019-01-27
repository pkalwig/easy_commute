import 'dart:async';
import 'dart:convert';

import 'package:easy_commute/DTO/agencies_dto.dart';
import 'package:easy_commute/data_fetch_urls.dart';
import 'package:easy_commute/data_fetcher.dart';

class DtoFetcher {
  final DataFetcher _dataFetcher = DataFetcher();

  Future<AgenciesDTO> fetchAgencies() async {
    AgenciesDTO result;
    try {
      String fetchResult = await _dataFetcher.fetchPost(DataFetchUrl.agencies);
      result = AgenciesDTO.fromJson(json.decode(fetchResult));
    } finally {}
    return result;
  }
}
