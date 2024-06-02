part of 'greeting_bloc.dart';

abstract class GreetingState extends Equatable {
  const GreetingState();

  @override
  List<Object> get props => [];
}

class GreetingInitial extends GreetingState {}

class NavigateToOnboardingState extends GreetingState {}
