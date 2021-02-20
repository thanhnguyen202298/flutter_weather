
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
List<Result> cityList= [];
Reposity resposity;

final _citylistSubject = PublishSubject<List<Result>>();
final _weatherlistSubject = PublishSubject<WeatherInfo>();

Stream<List<Result>> get cityListStream => _citylistSubject.stream;
Stream<WeatherInfo> get cityWeatherStream => _weatherlistSubject.stream;

loadDataCity(String name) async {
  CityInfo cityInfo = await resposity.fetchCity(name);
  cityList = cityInfo.results;
  _citylistSubject.add(cityList);
}

loadWeather(String lat, String lon, String exclude) async {
  cityWeather = await resposity.fetchWeather(lat, lon, exclude);
  _weatherlistSubject.add(cityWeather);
}

}