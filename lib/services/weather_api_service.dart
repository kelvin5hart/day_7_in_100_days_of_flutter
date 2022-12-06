import 'package:day_7_in_100_days_of_flutter/model/weather_location_model.dart';
import 'package:http/http.dart' as http;

// String? longitude;
// String? latitude;
String apiKey = "559b96de643cba51492b48f90ab74ca9";
// String endPoint = "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey";

getCurrentWeather(double? longitude, double? latitude) async {
  String endPoint = "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey";
  var url = Uri.parse(endPoint);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var data = weatherLocationFromJson(response.body.toString());
    print(data.weather![0].description);
    return data;
  }
}
