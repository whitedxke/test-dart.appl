import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/color_resource.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.black,
      body: Container(),
    );
  }
}
