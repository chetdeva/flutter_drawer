import 'package:flutter/material.dart';

class ImageUtils {

  static ImageProvider applyImage(String imageUrl, String placeholderLocation) {
    if (imageUrl != null) {
      return NetworkImage(imageUrl);
    } else {
      return AssetImage(placeholderLocation);
    }
  }
}
