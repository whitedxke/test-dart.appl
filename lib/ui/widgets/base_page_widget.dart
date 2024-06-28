import 'package:flutter/material.dart';

import '../../core/resources/color_resource.dart';

class BasePageWidget extends StatelessWidget {
  final bool _inverse;
  final Widget _widget;

  const BasePageWidget({
    super.key,
    required Widget widget,
    required bool inverse,
  })  : _widget = widget,
        _inverse = inverse;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _inverse ? ColorResource.white : ColorResource.black;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _widget,
    );
  }
}
