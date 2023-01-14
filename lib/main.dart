import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/core/database.dart';
import 'package:food_otus/core/di.dart';
import 'package:food_otus/core/helper/detector_helper.dart';
import 'package:food_otus/core/helper/route_helper.dart';
import 'package:food_otus/pages/main/nav_bloc.dart';
import 'package:food_otus/pages/recipes/bloc/recipe_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  await appIns.get<Database>().init();
  await appIns.get<Database>().initBoxes();
  await appIns.get<DetectorHelper>().init();
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavBloc>(create: (context) => appIns<NavBloc>()),
        BlocProvider<RecipeBloc>(create: (context) => appIns<RecipeBloc>()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: 'Food Otus',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
