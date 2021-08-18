import 'package:http/http.dart' as http;

import 'catApi.dart';


class Apidataimport {
  static const url = "https://www.boredapi.com/api/activity";
  static Future<Aipdata> getdetails() async {
    final response = await http.get(
      Uri.parse(url),
    );
    final Aipdata apidata = aipdataFromJson(response.body);
    return apidata;
  }
}
