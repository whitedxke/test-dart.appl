import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/pages/greeting/greeting_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialization, which is used for adaptive layout
    // and support for different screen sizes.
    return const ScreenUtilInit(
      // Use to get screen sizes and other parameters from context.
      useInheritedMediaQuery: true,
      // Enable minimal text adaptation so,
      // that the text scales to fit the screen size.
      minTextAdapt: true,
      designSize: Size(
        375,
        812,
      ),
      // Set the way the font size is resolved.
      fontSizeResolver: FontSizeResolvers.height,
      child: MaterialApp(
        home: GreetingPage(),
      ),
    );
  }
}
