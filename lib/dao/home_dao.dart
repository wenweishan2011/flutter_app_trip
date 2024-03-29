import 'package:flutter_app_trip/model/home_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const HOME_URL = 'http://www.devio.org/io/flutter_app/json/home_page.json';

class HomeDao {
  static Future<HomeModel> fetch() async {
    var response = await http.get(HOME_URL);

    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      Map homeMap = json.decode(utf8decoder.convert(response.bodyBytes));
      return HomeModel.fromJson(homeMap);
    }
    return null;
  }
}
