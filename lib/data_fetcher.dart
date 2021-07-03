import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class DataFetcher {
  Future<String> fetchPost(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw NetworkException();
    }
    String body = utf8.decode(response.bodyBytes);
    return body;
  }
}

class NetworkException implements Exception {
  final String errMsg = 'Url can not be reached';

  String toString() {
    return errMsg;
  }
}
