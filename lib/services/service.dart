import 'package:http/http.dart' as http;
import 'dart:convert';

class Service {
  // Const
  Service();

  Future<http.Response> postRequest(String code) async {
    var url = 'http://10.0.2.2:9090/api/users/login';

    Map<String, dynamic> data = {'code': code};
    //encode Map to JSON
    var body = json.encode(data);
    Map<String, String> headers = {
      "Content-Type": "application/json; charset=UTF-8"
    };

    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    print("Response statusCode : ${response.statusCode}");
    print("Response Body : ${response.body}");

    return response;
  }
}
