import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/navigation/application_router.dart';
import 'ui/pages/greeting/bloc/greeting_bloc.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _applicationRouter = ApplicationRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      designSize: const Size(
        375,
        812,
      ),
      fontSizeResolver: FontSizeResolvers.height,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<GreetingBloc>(
            create: (context) => GreetingBloc(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: _applicationRouter.config(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
