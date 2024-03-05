part of 'splash_cubit.dart';

abstract class SplashState extends Equatable{
  const SplashState();

  @override
  List<Object> get props => [];
}

class SplashStateInitial1 extends SplashState {}

class SplashStateInitial extends SplashState {}

class SplashStateLoading extends SplashState {}

class SplashStateSuccess extends SplashState {}

class SplashStateError extends SplashState {
  final String error;
  const SplashStateError({required this.error});

  @override
  List<Object> get props => [error];
}


