import 'package:http/http.dart' as http;

class APIController {

  final API_URL = "https://1cdepqe1w5.execute-api.us-west-1.amazonaws.com/dev/api";
  APIController();

  Future<http.Response> fetchWords() {
    return http.get(Uri.parse('$API_URL/words'));
  }
}