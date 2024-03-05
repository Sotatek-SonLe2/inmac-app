import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inmac_app/data/repository/auth_repository/auth_repository.dart';
import 'package:inmac_app/domain/models/responses/user/user_info_model.dart';
import 'package:inmac_app/locator.dart';
import 'package:inmac_app/presentation/bloc/user/user_event.dart';
import 'package:inmac_app/presentation/bloc/user/user_state.dart';
import 'package:inmac_app/utils/enum/enum.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final authRepository = locator<IAuthRepository>();

  UserBloc()
      : super(UserState(
            status: StateStatus.initial,
            userInfoModel: UserInfoModel.defaultUser(),
            loggedIn: false,
            errorText: "",
            aboutUs : "",
            privacyPolicy : "",
            enableMyCheckInNotifications: true)) {
    on<LogoutEvent>(_logOut);
  }

  void _logOut(LogoutEvent event, Emitter<UserState> emit) async {
    final result = await authRepository.logOut();
    emit(state.copyWith(status: StateStatus.loading));
    result.fold(
      (error) {},
      (success) {
        emit(state.copyWith(
            status: StateStatus.initial,
            loggedIn: false,
            userInfoModel: UserInfoModel.defaultUser(),
            errorText: ""));
      },
    );
  }

}
