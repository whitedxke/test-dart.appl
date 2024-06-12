import 'package:flutter/material.dart';

import '../../../../core/resources/color_resource.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.black,
      body: Container(),
    );
  }
}

abstract class OnboardingProtocol {}