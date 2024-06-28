import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'greeting_event.dart';
part 'greeting_state.dart';

class GreetingBloc extends Bloc<GreetingEvent, GreetingState> {
  GreetingBloc() : super(GreetingInitial()) {
    on<StartDelayNavigationEvent>((event, emit) async {
      await _calculateStartDelayNavigationEvent(
        emit: emit,
      );
    });
  }

  Future<void> _calculateStartDelayNavigationEvent({
    required Emitter<GreetingState> emit,
  }) async {
    await Future.delayed(
      const Duration(seconds: 4),
    );
    emit(NavigateToOnboardingState());
  }
}
