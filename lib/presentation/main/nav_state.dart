part of 'nav_bloc.dart';

abstract class NavState {}

class ChangePage extends NavState {
  final int index;
  final bool isAuth;

  ChangePage({
    required this.index,
    required this.isAuth,
  });
}

class ShowAuth extends NavState {
  final bool isAuth;

  ShowAuth(this.isAuth);
}
