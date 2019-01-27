import 'package:http/http.dart' as http;

class DataFetcher {
  Future<String> fetchPost(String url) async {
    http.Response response = await http.get(url);
    if (response.statusCode != 200) {
      throw NetworkException();
    }
    return response.body;
  }
}

class NetworkException implements Exception {
  final String errMsg = 'Url can not be reached';

  String toString() {
    return errMsg;
  }
}
