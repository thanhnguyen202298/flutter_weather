import 'package:flutter_weather/utils/Utils.dart';

/**
 * Created by Nguyễn Trung Thành on 2/20/2021.
 *
 * victo202298@gmail.com
 */
class ModelOpenWeather {
}


class Current {
  double dt;
  String date;

  int sunrise;

  int sunset;

  dynamic temp;

  dynamic feelsLike;

  int pressure;

  int humidity;

  dynamic dewPoint;

  dynamic uvi;

  int clouds;

  int visibility;

  dynamic windSpeed;

  int windDeg;

  List<Weather> weather;

  Current.fromJson(Map<String, dynamic> jsonMap) {
    dt = double.parse(jsonMap['dt'].toString());
    date = timeUnix2DateTime(dt);
    sunrise = jsonMap['sunrise'];
    sunset = jsonMap['sunset'];
    temp = jsonMap['temp'];
    feelsLike = jsonMap['feels_like'];
    pressure = jsonMap['pressure'];
    humidity = jsonMap['humidity'];
    dewPoint = jsonMap['dew_point'];
    uvi = jsonMap['uvi'];
    clouds = jsonMap['clouds'];

    visibility = jsonMap['visibility'];
    windSpeed = jsonMap['wind_speed'];

    windDeg = jsonMap['wind_deg'];
    weather = [];
    int n = jsonMap['weather'].length;
    for (int i = 0; i < n; i++) {
      Weather w = Weather(jsonMap['weather'][i]);
      weather.add(w);
    }
  }
}

class Daily {
  double dt;

  String date;

  int sunrise;

  int sunset;

  Temp temp;

  FeelsLike feelsLike;

  int pressure;

  int humidity;

  dynamic dewPoint;

  dynamic windSpeed;

  int windDeg;

  List<Weather> weather;

  int clouds;

  dynamic pop;

  dynamic rain;

  dynamic uvi;

  int visibility;

  Daily(json) {
    dt = double.parse(json['dt'].toString());

    date = timeUnix2DateTime(dt);
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = Temp(json['temp']);
    feelsLike = FeelsLike(json['feels_like']);
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    clouds = json['clouds'];
    pop = json['pop'];
    rain = json['rain'];
    uvi = json['uvi'];
    visibility = json['visibility'];
    weather = [];
    int n = json['weather'].length;
    for (int i = 0; i < n; i++) {
      Weather w = Weather(json['weather'][i]);
      weather.add(w);
    }
  }
}

class FeelsLike {
  dynamic day;

  dynamic night;

  dynamic eve;

  dynamic morn;

  FeelsLike(feelslike) {
    day = feelslike['day'];
    night = feelslike['night'];
    eve = feelslike['eve'];
    morn = feelslike['morn'];
  }
}

class Temp {
  dynamic day;

  dynamic min;

  dynamic max;

  dynamic night;

  dynamic eve;

  dynamic morn;

  Temp(temp) {
    day = temp['day'];
    min = temp['min'];
    max = temp['night'];
    night = temp['night'];
    eve = temp['eve'];
    morn = temp['morn'];
  }
}

class Weather {
  int id;

  String main;

  String description;

  String icon;

  Weather(weather) {
    id = weather['id'];
    main = weather['main'];
    description = weather['description'];
    icon = weather['icon'];
  }
}

class WeatherInfo {
  double lat;

  double lon;

  String timezone;

  int timezoneOffset;

  Current current;

  List<Daily> daily;

  WeatherInfo.fromJson(Map<String, dynamic> weatherInfo) {
    // try {
    lat = weatherInfo['lat'];
    lon = weatherInfo['lon'];
    timezone = weatherInfo['timezone'];
    timezoneOffset = weatherInfo['timezone_offset'];
    current = Current.fromJson(weatherInfo['current']);

    daily = [];
    int n = weatherInfo['daily'].length;
    for (int i = 0; i < n; i++) {
      Daily w = Daily(weatherInfo['daily'][i]);
      daily.add(w);
    }
    // } catch (e) {
    //   throw Exception(e);
    // }
  }
}
