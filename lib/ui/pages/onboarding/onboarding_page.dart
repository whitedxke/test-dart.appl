import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/navigation/application_router.dart';
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
    return OnboardingView(
      protocol: delegate,
    );
  }
}

class OnboardingDelegate implements OnboardingProtocol {
  final BuildContext context;

  OnboardingDelegate({
    required this.context,
  });

  @override
  void onNavigateToHomePage() {
    context.router.replaceAll([
      const HomeRoute(),
    ]);
  }
}
