import 'index.dart';

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
