import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather/model/ModelOpenCity.dart';
import 'package:flutter_weather/model/ModelOpenWeather.dart';
import 'package:flutter_weather/view/BlocProvider.dart';
import 'package:flutter_weather/view/CityItemWidget.dart';
import 'package:flutter_weather/view/WeatherWidget.dart';

/**
 * Created by Nguyễn Trung Thành on 2/22/2021.
 *
 * victo202298@gmail.com
 **/
class ListCityWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final String title;
  final Stream<String> messageStream;

  ListCityWidget({Key key, this.title, this.messageStream});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(title),
      ),
      body: StreamBuilder<List<CityItem>>(
        stream: bloc.cityListStream,
        builder: (context, snashot) {
          if (snashot.data == null) return Text("");
          List<Widget> citylist =
              snashot.data.map((e) => CityItemWidget(e)).toList();
          return ListView(
            padding: const EdgeInsets.all(10.0),
            children: citylist,
          );
        },
      ),
    );
  }
}
