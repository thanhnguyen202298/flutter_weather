import 'package:flutter/material.dart';

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