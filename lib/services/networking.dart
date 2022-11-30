import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

/*
var decodeJson = jsonDecode(data);
double temp = decodeJson['main']['temp'];
int condition = decodeJson['weather'][0]['id'];
String cityName = decodeJson['name'];

print(temp);
print(condition);
print(cityName);
//'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'
*/
