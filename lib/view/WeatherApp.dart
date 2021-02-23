import 'package:flutter/material.dart';
import 'package:flutter_weather/stream/Bloc.dart';
import 'package:flutter_weather/view/BlocProvider.dart';
import 'package:flutter_weather/view/ListCityWidget.dart';
import 'package:flutter_weather/view/ListDayWeather.dart';

/**
 * Created by Nguyễn Trung Thành on 2/21/2021.
 *
 * victo202298@gmail.com
 */
class WeatherApp extends StatelessWidget {
  final Bloc _bloc = Bloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        bloc: _bloc,
        child: ListCityWidget(
          title: "list weahter info of day",
          messageStream: _bloc.messageStream,
        )
      ),
    );
  }
}
