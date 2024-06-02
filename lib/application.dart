import 'index.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _applicationRouter = ApplicationRouter();

  @override
  Widget build(BuildContext context) {
    // Initialization, which is used for adaptive layout
    // and support for different screen sizes.
    return ScreenUtilInit(
      // Use to get screen sizes and other parameters from context.
      useInheritedMediaQuery: true,
      // Enable minimal text adaptation so,
      // that the text scales to fit the screen size.
      minTextAdapt: true,
      designSize: const Size(
        375,
        812,
      ),
      // Set the way the font size is resolved.
      fontSizeResolver: FontSizeResolvers.height,
      child: MultiBlocProvider(
        // Creates and provides an instance for the entire widget subtree.
        providers: [
          BlocProvider<GreetingBloc>(
            create: (context) => GreetingBloc(),
          ),
        ],
        child: MaterialApp.router(
          // The router configuration determines, how routes should be handled.
          routerConfig: _applicationRouter.config(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
