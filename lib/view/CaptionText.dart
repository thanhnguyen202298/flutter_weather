
import 'package:flutter/material.dart';

/**
 * Created by Nguyễn Trung Thành on 2/20/2021.
 *
 * victo202298@gmail.com
 */
class CaptionText  extends StatelessWidget {
  CaptionText(this.data,
      {this.fontsize,
        this.color,
        this.bold,
        this.paddingBox = 0,
        this.alignText = TextAlign.start})
      : super();
  final String data;
  final double fontsize;
  final double paddingBox;
  final Color color;
  final TextAlign alignText;
  final FontWeight bold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(this.paddingBox),
      child: Text(
        data,
        style: TextStyle(
            fontSize: this.fontsize, color: this.color, fontWeight: this.bold),
        textAlign: this.alignText,
      ),
    );
  }
}