import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/**
 * Created by Nguyễn Trung Thành on 2/20/2021.
 *
 * victo202298@gmail.com
 */
class Utils {
}

class ImageLoad {
  ImageProvider checkUrlImage(String data) {
    if (data.contains("http://") || data.contains("https://")) {
      return NetworkImage(data);
    }
    return Image.asset(data).image;
  }
}

  String timeUnix2DateTime(double timeMilisec){
    try {
      DateTime da = DateTime.fromMillisecondsSinceEpoch((timeMilisec * 1000).toInt(),isUtc: true);
      String dformatted = DateFormat("EEE, MMM d yyyy").format(da);
      return dformatted;
    } catch (e) {

    }
    return "";
  }