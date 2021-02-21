import 'package:flutter/cupertino.dart';
import 'package:flutter_weather/model/ModelOpenWeather.dart';
import 'package:flutter_weather/utils/ConstantData.dart';
import 'package:flutter_weather/view/BlocProvider.dart';
import 'package:flutter_weather/view/DecorMyWidget.dart';

/**
 * Created by Nguyễn Trung Thành on 2/21/2021.
 *
 * victo202298@gmail.com
 */
class WeatherWidget extends StatelessWidget {
  final Daily _infoWeather;
  WeatherWidget(this._infoWeather);
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: CircleDecor("$IconWeatherLinkPrefix/${_infoWeather.weather[0].icon}@2x.png").build(),
        )
      ],
    );
  }
}