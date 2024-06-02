import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application.dart';

void main() {
  // Ensures, that initialization is complete before code execution.
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp])
      // Once installed, the orientation launches the application.
      .then((context) => runApp(const Application()),
  );
}
