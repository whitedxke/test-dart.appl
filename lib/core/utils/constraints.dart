import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constraints {
  static double getBottomWidgetInset({
    required double value,
  }) {
    final padding = MediaQueryData.fromView(WidgetsBinding.instance.window).padding.h;
    final inset = padding.bottom;
    final difference = value - inset;
    if (difference > 0) {
      return difference;
    } else {
      return 0.h;
    }
  }
}
