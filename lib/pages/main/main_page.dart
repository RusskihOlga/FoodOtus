import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/core/di.dart';
import 'package:food_otus/pages/main/nav_bloc.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  final Widget page;

  const MainPage({Key? key, required this.page}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => appIns<NavBloc>()..add(GetStatusAuth(isInit: true)),
      child: Scaffold(
        body: SafeArea(child: widget.page),
        bottomNavigationBar: BlocBuilder<NavBloc, NavState>(
          buildWhen: (prevState, nextState) => nextState is ChangePage,
          builder: (context, state) {
            var indexNew = state is ChangePage ? state.index : 0;
            var isAuth = state is ChangePage ? state.isAuth : false;
            return BottomNavigationBar(
              currentIndex: indexNew,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset("assets/images/menu_pizza.png"),
                  activeIcon:
                      Image.asset("assets/images/menu_pizza_active.png"),
                  label: "Рецепты",
                ),
                if (!isAuth)
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/images/menu_user.png"),
                    activeIcon:
                        Image.asset("assets/images/menu_user_active.png"),
                    label: "Вход",
                  ),
                if (isAuth) ...[
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/images/menu_fridge.png"),
                    activeIcon:
                        Image.asset("assets/images/menu_fridge_active.png"),
                    label: "Холодильник",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/images/menu_favorite.png"),
                    activeIcon:
                        Image.asset("assets/images/menu_favorite_active.png"),
                    label: "Избранное",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/images/menu_user.png"),
                    activeIcon:
                        Image.asset("assets/images/menu_user_active.png"),
                    label: "Профиль",
                  ),
                ]
              ],
              onTap: (index) {
                if (index != indexNew) {
                  if (index == 0) context.go("/recipe");
                  if (index == 1 && !isAuth) context.go("/login");
                  if (index == 2) context.go("/favorite");
                  if (index == 3) context.go("/profile");

                  context.read<NavBloc>().add(NavigatorEvent(index));
                }
              },
              selectedItemColor: const Color(0xFF2ECC71),
            );
          },
        ),
      ),
    );
  }
}
