import 'package:flutter/material.dart';

import '../color_resource.dart';
import 'text_height_resource.dart';
import 'text_size_resource.dart';

class TextStyleResource {
  static const _baseTextFamily = 'Roboto';

  static final TextStyle _base = TextStyle(
    fontFamily: _baseTextFamily,
    color: ColorResource.white,
    fontSize: TextSizeResource.fontSize14,
  );

  static TextStyle white14({
    required FontWeight weight,
    required TextHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        fontWeight: weight,
        height: height.value,
      ),
    );
  }

  static TextStyle white18({
    required FontWeight weight,
    required TextHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        fontSize: TextSizeResource.fontSize18,
        fontWeight: weight,
        height: height.value,
      ),
    );
  }

  static TextStyle black14({
    required FontWeight weight,
    required TextHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        color: ColorResource.black,
        fontWeight: weight,
        height: height.value,
      ),
    );
  }
}
