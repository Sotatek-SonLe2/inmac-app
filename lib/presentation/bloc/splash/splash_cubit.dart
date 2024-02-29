import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inmac_app/domain/repository/auth_repository/auth_repository.dart';
import 'package:inmac_app/locator.dart';
import 'package:equatable/equatable.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashStateInitial());

  final authRepository = locator<IAuthRepository>();

  init() async {
    emit(SplashStateInitial());
    await isFirstOpenApp();
  }

  Future<void> isFirstOpenApp() async {
    emit(SplashStateLoading());
    // await Future.delayed(const Duration(milliseconds: 200));
    final result = await authRepository.isFirstOpenApp("example@gmail.com");
    result.fold(
      (l) {
        emit(SplashStateError(error: '$l'));
      },
      (success) {
        emit(SplashStateSuccess());
      },
    );
  }
}
