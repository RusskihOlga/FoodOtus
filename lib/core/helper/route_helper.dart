import 'package:flutter/material.dart';
import 'package:food_otus/core/animation/custom_route.dart';
import 'package:food_otus/pages/favorite/pages/favorite_page.dart';
import 'package:food_otus/pages/login/pages/login_page.dart';
import 'package:food_otus/pages/login/pages/reg_page.dart';
import 'package:food_otus/pages/main/main_page.dart';
import 'package:food_otus/pages/profile/pages/profile_page.dart';
import 'package:food_otus/pages/recipes/detail/pages/camera_page.dart';
import 'package:food_otus/pages/recipes/detail/pages/detail_photo.dart';
import 'package:food_otus/pages/recipes/detail/pages/details_page.dart';
import 'package:food_otus/pages/recipes/pages/recipes_page.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: "/recipe",
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        if (state.extra == null) {
          return MainPage(page: child);
        }

        return MainPage(page: child);
      },
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: '/registration',
          builder: (BuildContext context, GoRouterState state) =>
              const RegistrationPage(),
        ),
        GoRoute(
          path: '/recipe',
          builder: (context, state) => const RecipesPage(),
        ),
        GoRoute(
          path: '/favorite',
          builder: (context, state) => const FavoritePage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) {
            return const ProfilePage();
          },
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/details',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: DetailsPage(recipe: (state.extra as Map)["recipe"]),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/camera',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: CameraPage(id: (state.extra as Map)["id"]),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/details_photo',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition(
          state: state,
          context: context,
          child: DetailPhoto(
            file: (state.extra as Map)["file"],
            detectors: (state.extra as Map)["detectors"],
          ),
        );
      },
    ),
  ],
);
