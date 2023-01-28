part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ShowData extends ProfileState {
  final String login;

  ShowData(this.login);
}

class ShowDevice extends ProfileState {
  final String device;

  ShowDevice(this.device);
}