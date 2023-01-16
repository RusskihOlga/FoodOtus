part of 'login_bloc.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class Loading extends LoginState {}

class Error extends LoginState {
  final String error;

  Error(this.error);
}

class LoginData extends LoginState {
  final String login;

  LoginData(this.login);
}

class PasswordData extends LoginState {
  final String password;

  PasswordData(this.password);
}

class ConfirmPasswordData extends LoginState {
  final String password;

  ConfirmPasswordData(this.password);
}

class Success extends LoginState {}
