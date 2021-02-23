import 'package:flutter_weather/data/DataProvider.dart';
import 'package:flutter_weather/model/ModelOpenCity.dart';
import 'package:flutter_weather/model/ModelOpenWeather.dart';
import 'package:rxdart/rxdart.dart';

/**
 * Created by Nguyễn Trung Thành on 2/20/2021.
 *
 * victo202298@gmail.com
 */
class Bloc {
  WeatherInfo cityWeather;
  List<CityItem> cityList = [];
  Reposity resposity;

  Bloc() {
    resposity = Reposity();
    loadWeather("10.7715512", "106.6983801", "minute");
  }

  final _citylistSubject = PublishSubject<List<CityItem>>();
  final _weatherlistSubject = PublishSubject<WeatherInfo>();
  final _messageSubject = BehaviorSubject<String>();

  Stream<List<CityItem>> get cityListStream => _citylistSubject.stream;

  Stream<WeatherInfo> get cityWeatherStream => _weatherlistSubject.stream;

  Stream<String> get messageStream => _messageSubject.stream;

  loadDataCity(String name) async {
    CityInfo cityInfo = await resposity.fetchCity(name);
    cityList = cityInfo.results;
    _citylistSubject.add(cityList);
  }

  loadWeather(String lat, String lon, String exclude) async {
    try {
      cityWeather = await resposity.fetchWeather(lat, lon, exclude);
      _weatherlistSubject.add(cityWeather);
    } catch (e) {
      _messageSubject.add(e.toString());
    }
  }
}