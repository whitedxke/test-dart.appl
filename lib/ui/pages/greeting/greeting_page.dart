import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/navigation/application_router.dart';
import 'bloc/greeting_bloc.dart';
import 'view/greeting_view.dart';

@RoutePage()
class GreetingPage extends StatefulWidget {
  const GreetingPage({super.key});

  @override
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  @override
  Widget build(BuildContext context) {
    GreetingDelegate delegate = GreetingDelegate(
      context: context,
    );
    return BlocProvider.value(
      value: BlocProvider.of<GreetingBloc>(context),
      child: BlocListener<GreetingBloc, GreetingState>(
        listener: (context, state) {
          if (state is NavigateToOnboardingState) {
            delegate.navigateToOnboardingPage();
          }
        },
        child: const GreetingView(),
      ),
    );
  }
}

class GreetingDelegate implements GreetingProtocol {
  final BuildContext context;

  const GreetingDelegate({
    required this.context,
  });

  void navigateToOnboardingPage() {
    context.router.replaceAll([
      const OnboardingRoute(),
    ]);
  }
}
