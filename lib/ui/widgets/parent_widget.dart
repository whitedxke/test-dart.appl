import 'package:flutter/material.dart';

import '../../core/resources/color_resource.dart';

class ParentWidget extends StatelessWidget {
  final Widget _widget;

  const ParentWidget({
    super.key,
    required Widget widget,
  }) : _widget = widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.black,
      body: SafeArea(
        child: _widget,
      ),
    );
  }
}
