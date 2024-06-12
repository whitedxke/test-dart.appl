import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'view/onboarding_view.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    OnboardingDelegate delegate = OnboardingDelegate(
      context: context,
    );
    return const OnboardingView();
  }
}

class OnboardingDelegate implements OnboardingProtocol {
  final BuildContext context;

  OnboardingDelegate({
    required this.context,
  });
}
