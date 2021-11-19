import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = 'acc9068ec2056e6e17c02844aa9ca5b8';

class NetworkHelper {
  NetworkHelper({this.latitude, this.longitude});

  final double latitude;
  final double longitude;

  Future getData() async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getCityWeatherData(String cityName) async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric');
        http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
