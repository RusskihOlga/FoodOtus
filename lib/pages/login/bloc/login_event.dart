part of 'login_bloc.dart';

abstract class LoginEvent {}

class SignUpEvent extends LoginEvent {
  final String login;
  final String password;
  final String confirmPassword;

  SignUpEvent(
    this.login,
    this.password,
    this.confirmPassword,
  );
}

class SignInEvent extends LoginEvent {
  final String login;
  final String password;

  SignInEvent(
    this.login,
    this.password,
  );
}