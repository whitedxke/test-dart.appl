// GENERATED CODE - DO NOT MODIFY BY HAND.

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'application_router.dart';

abstract class _$ApplicationRouter extends RootStackRouter {
  // ignore: unused_element
  _$ApplicationRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GreetingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GreetingPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
  };
}

/// generated route for:
/// [GreetingPage].
class GreetingRoute extends PageRouteInfo<void> {
  const GreetingRoute({List<PageRouteInfo>? children})
      : super(
          GreetingRoute.name,
          initialChildren: children,
        );

  static const String name = 'GreetingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for:
/// [OnboardingPage].
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
