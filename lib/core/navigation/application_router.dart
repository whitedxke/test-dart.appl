import 'index.dart';

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
