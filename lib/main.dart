import 'index.dart';

void main() {
  // Ensures, that initialization is complete before code execution.
  WidgetsFlutterBinding.ensureInitialized();
  // Setting the global observer.
  Bloc.observer = ApplicationBlocObserver();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp])
      // Once installed, the orientation launches the application.
      .then((context) => runApp(Application()),
  );
}
