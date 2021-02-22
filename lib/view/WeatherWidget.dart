import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather/model/ModelOpenWeather.dart';
import 'package:flutter_weather/utils/ConstantData.dart';
import 'package:flutter_weather/view/BlocProvider.dart';
import 'package:flutter_weather/view/CaptionText.dart';
import 'package:flutter_weather/view/DecorMyWidget.dart';

/**
 * Created by Nguyễn Trung Thành on 2/21/2021.
 *
 * victo202298@gmail.com
 */
class WeatherWidget extends StatelessWidget {
  final Daily _dateWeather;
  WeatherWidget(this._dateWeather);
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: CircleDecor("$IconWeatherLinkPrefix/${_dateWeather.weather[0].icon}@2x.png").build(),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                CaptionText("Date: ",bold: FontWeight.bold, fontsize: 14,),
                CaptionText("${_dateWeather.date}", color: Colors.black54,bold: FontWeight.bold, fontsize: 14,),
              ],
            ),
            Row(
              children: [
                CaptionText("Presure: ",bold: FontWeight.bold, fontsize: 14,),
                CaptionText("${_dateWeather.pressure} at", color: Colors.black54,bold: FontWeight.bold, fontsize: 14,),
              ],
            ),
            Row(
              children: [
                CaptionText("Temperature: ",bold: FontWeight.bold, fontsize: 14,),
                CaptionText("${_dateWeather.temp.day}°C", color: Colors.black54,bold: FontWeight.bold, fontsize: 14,),
              ],
            ),
            Row(
              children: [
                CaptionText("Humidity: ",bold: FontWeight.bold, fontsize: 14,),
                CaptionText("${_dateWeather.humidity}%", color: Colors.black54,bold: FontWeight.bold, fontsize: 14,),
              ],
            ),
          ],
        )
      ],
    );
  }
}