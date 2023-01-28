part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {}

class LoadData extends ProfileEvent {}

class StopLoad extends ProfileEvent {}

class AddDevice extends ProfileEvent {
  final String device;

  AddDevice(this.device);
}
