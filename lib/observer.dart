import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class ApplicationBlocObserver extends BlocObserver {
  @override
  void noSuchMethod(Invocation invocation) {
    super.noSuchMethod(invocation);
    if (kDebugMode) {
      print(
        'ApplicationBlocObserver. Such method: $invocation.',
      );
    }
  }

  @override
  void onChange(
    BlocBase bloc,
    Change change,
  ) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print(
        'ApplicationBlocObserver. Change: $change.',
      );
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print(
        'ApplicationBlocObserver. Close: $bloc.',
      );
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print(
        'ApplicationBlocObserver. Create: $bloc.',
      );
    }
  }

  @override
  void onEvent(
    Bloc bloc,
    Object? event,
  ) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print(
        'ApplicationBlocObserver. Event: $event.',
      );
    }
  }

  @override
  void onTransition(
    Bloc bloc,
    Transition transition,
  ) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print(
        'ApplicationBlocObserver. Transition: $transition.',
      );
    }
  }

  @override
  void onError(
    BlocBase bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      print(
        'ApplicationBlocObserver. Error: $error.',
      );
    }
  }
}
