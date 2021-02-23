import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather/model/ModelOpenCity.dart';
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
class CityItemWidget extends StatelessWidget {
  final CityItem _cityItem;

  CityItemWidget(this._cityItem);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CaptionText(
                      "${_cityItem.components.type}: ",
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                    CaptionText(
                      "${_cityItem.formatted}",
                      color: Colors.black54,
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                  ],
                ),
                Row(
                  children:
                  [
                    CaptionText(
                      "State: ",
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                    CaptionText(
                      "${_cityItem.components.state}, Code: ${_cityItem.components.stateCode}",
                      color: Colors.black54,
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CaptionText(
                      "Country: ",
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                    CaptionText(
                      "${_cityItem.components.country}, Code: ${_cityItem.components.countryCode}",
                      color: Colors.black54,
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CaptionText(
                      "Continent ",
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                    CaptionText(
                      "${_cityItem.components.continent}",
                      color: Colors.black54,
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CaptionText(
                      "Latitude/Longitude: ",
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                    CaptionText(
                      "${_cityItem.geometry.lat}/${_cityItem.geometry.lng}",
                      bold: FontWeight.bold,
                      fontsize: 14,
                    ),
                  ],
                ),
                Row(
                  children: [Text("")],
                )
              ]),
          )
        )
      ],
    );
  }
}
