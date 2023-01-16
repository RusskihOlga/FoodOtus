part of 'nav_bloc.dart';

abstract class NavEvent {}

class NavigatorEvent extends NavEvent {
  final int newIndex;

  NavigatorEvent(this.newIndex);
}

class ChangeAuth extends NavEvent {
}

class GetStatusAuth extends NavEvent {
  final bool isInit;

  GetStatusAuth({this.isInit = false});
}
