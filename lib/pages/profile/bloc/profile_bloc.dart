import 'package:bloc/bloc.dart';
import 'package:food_otus/core/plugins/bluetooth_low_energy_plugin.dart';
import 'package:food_otus/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserRepository repository;
  final BluetoothLowEnergyPlugin blePlugin;

  ProfileBloc({required this.repository, required this.blePlugin})
      : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) async {
      if (event is LoadData) {
        var user = repository.getUser();
        emit(ShowData(user!.login));
        await blePlugin.startScan((device) => add(AddDevice(device)));
      } else if (event is StopLoad) {
        await blePlugin.stopScan();
      } else if (event is AddDevice) {
        emit(ShowDevice(event.device));
      }
    });
  }
}
