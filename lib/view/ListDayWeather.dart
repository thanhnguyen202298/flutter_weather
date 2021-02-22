import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather/model/ModelOpenWeather.dart';
import 'package:flutter_weather/view/BlocProvider.dart';
import 'package:flutter_weather/view/WeatherWidget.dart';

/**
 * Created by Nguyễn Trung Thành on 2/22/2021.
 *
 * victo202298@gmail.com
 **/
class ListDayWeather extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final String title;
  final Stream<String> messageStream;

  ListDayWeather({Key key, this.title, this.messageStream});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(title),
      ),
      body: StreamBuilder<WeatherInfo>(
        stream: bloc.cityWeatherStream,
        builder: (context, snashot) {
          if (snashot.data == null) return Text("");
          List<Widget> weatherDays =
              snashot.data.daily.map((e) => WeatherWidget(e)).toList();
          return ListView(
            padding: const EdgeInsets.all(10.0),
            children: weatherDays,
          );
        },
      ),
    );
  }
}
