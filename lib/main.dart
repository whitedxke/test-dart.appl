import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application.dart';
import 'observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = ApplicationBlocObserver();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(Application());
}
