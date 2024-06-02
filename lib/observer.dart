import 'index.dart';

class ApplicationBlocObserver extends BlocObserver {
  @override
  void noSuchMethod(Invocation invocation) {
    // A method is called if a non-existent method,
    // or property is invoked in an object.
    super.noSuchMethod(invocation);

    if (kDebugMode) {
      print('ApplicationBlocObserver. Such method: $invocation.');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // The method is called, when the state changes.
    super.onChange(bloc, change);

    if (kDebugMode) {
      print('ApplicationBlocObserver. Change: $change.');
    }
  }

  @override
  void onClose(BlocBase bloc) {
    // The method is called, when is closed.
    super.onClose(bloc);

    if (kDebugMode) {
      print('ApplicationBlocObserver. Close: $bloc.');
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    // The method is called, when is created.
    super.onCreate(bloc);

    if (kDebugMode) {
      print('ApplicationBlocObserver. Create: $bloc.');
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // The method is called, when the event is received.
    super.onEvent(bloc, event);

    if (kDebugMode) {
      print('ApplicationBlocObserver. Event: $event.');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // The method is called, when the state transitions.
    super.onTransition(bloc, transition);

    if (kDebugMode) {
      print('ApplicationBlocObserver. Transition: $transition.');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // The method is called, when an error occurs.
    super.onError(bloc, error, stackTrace);

    if (kDebugMode) {
      print('ApplicationBlocObserver. Error: $error.');
    }
  }
}
