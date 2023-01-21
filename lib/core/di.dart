import 'package:food_otus/core/client.dart';
import 'package:food_otus/core/database.dart';
import 'package:food_otus/core/helper/detector_helper.dart';
import 'package:food_otus/core/plugins/bluetooth_low_energy_plugin.dart';
import 'package:food_otus/data/data_sources/recipe_local_source.dart';
import 'package:food_otus/data/data_sources/recipe_remote_source.dart';
import 'package:food_otus/data/data_sources/user_local_source.dart';
import 'package:food_otus/data/data_sources/user_remote_source.dart';
import 'package:food_otus/domain/repositories/recipe_repository.dart';
import 'package:food_otus/domain/repositories/user_repository.dart';
import 'package:food_otus/pages/favorite/bloc/favorite_bloc.dart';
import 'package:food_otus/pages/login/bloc/login_bloc.dart';
import 'package:food_otus/pages/main/nav_bloc.dart';
import 'package:food_otus/pages/profile/bloc/profile_bloc.dart';
import 'package:food_otus/pages/recipes/bloc/recipe_bloc.dart';
import 'package:get_it/get_it.dart';

final appIns = GetIt.instance;

void setupDI() {
  appIns.registerFactory<NavBloc>(() => NavBloc(repository: appIns()));
  appIns.registerFactory<LoginBloc>(() => LoginBloc(repository: appIns()));
  appIns.registerFactory<RecipeBloc>(
        () => RecipeBloc(
      userRepository: appIns(),
      recipeRepository: appIns(),
    ),
  );
  appIns
      .registerFactory<FavoriteBloc>(() => FavoriteBloc(repository: appIns()));
  appIns.registerFactory(
        () => ProfileBloc(
      repository: appIns(),
      blePlugin: appIns(),
    ),
  );
  appIns.registerLazySingleton<RecipeRepository>(
        () => RecipeRepository(
      localSource: appIns(),
      remoteSource: appIns(),
    ),
  );
  appIns.registerLazySingleton<UserRepository>(
        () => UserRepository(
      remoteSource: appIns(),
      localSource: appIns(),
    ),
  );
  appIns.registerLazySingleton(() => RecipeLocalSource(database: appIns()));
  appIns.registerLazySingleton(() => RecipeRemoteSource(client: appIns()));
  appIns.registerLazySingleton(() => UserRemoteSource(client: appIns()));
  appIns.registerLazySingleton(() => UserLocalSource(database: appIns()));
  appIns.registerLazySingleton(() => DetectorHelper());
  appIns.registerLazySingleton(() => Database());
  appIns.registerLazySingleton(() => Client());
  appIns.registerLazySingleton(() => BluetoothLowEnergyPlugin());
}
