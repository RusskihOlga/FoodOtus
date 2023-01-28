import 'package:bloc/bloc.dart';
import 'package:food_otus/domain/repositories/user_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository repository;

  LoginBloc({required this.repository}) : super(LoginInitial()) {
    on<SignUpEvent>(_signUp);
    on<SignInEvent>(_signIn);
  }

  _signUp(SignUpEvent event, Emitter<LoginState> emit) async {
    if (event.password != event.confirmPassword) {
      emit(Error("Пароли не совпадают"));
    } else {
      emit(Loading());
      try {
        var result = await repository.signUp(event.login, event.password);
        if (result) {
          emit(Success());
        } else {
          emit(Error("Произошла ошибка"));
        }
      } catch (e) {
        emit(Error("Произошла ошибка"));
      }
    }
  }

  _signIn(SignInEvent event, Emitter<LoginState> emit) async {
    emit(Loading());
    try {
      var result = await repository.signIn(event.login, event.password);
      if (result) {
        emit(Success());
      } else {
        emit(Error("Произошла ошибка"));
      }
    } catch (e) {
      emit(Error("Произошла ошибка"));
    }
  }
}
