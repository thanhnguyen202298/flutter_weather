

import 'package:flutter/material.dart';
import 'package:flutter_weather/utils/Utils.dart';
import 'package:flutter_weather/view/CaptionText.dart';

/**
 * Created by Nguyễn Trung Thành on 2/20/2021.
 *
 * victo202298@gmail.com
 */
class CircleDecor with ImageLoad {
  CircleDecor(this.url, {this.color}) : super();
  final String url;
  final Color color;

  @override
  Decoration build() {
    return ShapeDecoration.fromBoxDecoration(BoxDecoration(
        shape: BoxShape.circle,
        color: this.color,
        image: DecorationImage(image: checkUrlImage(this.url))));
  }
}

class RectangleDecor with ImageLoad {
  RectangleDecor(this.url,
      {this.round = 0, this.color = Colors.lightBlueAccent});

  final String url;
  final Color color;
  final double round;

  @override
  Decoration build() {
    return ShapeDecoration.fromBoxDecoration(BoxDecoration(
        borderRadius: BorderRadius.circular(round),
        shape: BoxShape.rectangle,
        color: this.color,
        image: DecorationImage(image: checkUrlImage(this.url))));
  }
}

class CircleImage extends StatelessWidget with ImageLoad {
  CircleImage(this.data, {this.radial = 5, this.color, this.url = ""})
      : super();
  final String data;
  final String url;
  final double radial;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircleAvatar(
          child: CaptionText(
            this.data,
            fontsize: 20,
            color: Colors.amber,
          ),
          radius: this.radial,
          backgroundColor: this.color,
          backgroundImage: checkUrlImage(this.url),
        ));
  }
}
