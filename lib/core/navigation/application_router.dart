import 'package:auto_route/auto_route.dart';

import '../../ui/pages/greeting/greeting_page.dart';
import '../../ui/pages/onboarding/onboarding_page.dart';

part 'application_router.gr.dart';

@AutoRouterConfig()
class ApplicationRouter extends _$ApplicationRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: GreetingRoute.page,
      initial: true,
    ),
    AutoRoute(page: OnboardingRoute.page),
  ];
}
