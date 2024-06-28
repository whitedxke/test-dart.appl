import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/color_resource.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorResource.white,
    );
  }
}
