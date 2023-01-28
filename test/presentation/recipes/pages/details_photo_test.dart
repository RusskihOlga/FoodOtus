import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_otus/domain/repositories/recipe_repository.dart';
import 'package:food_otus/domain/repositories/user_repository.dart';
import 'package:food_otus/presentation/main/nav_bloc.dart';
import 'package:food_otus/presentation/recipes/bloc/recipe_bloc.dart';
import 'package:food_otus/presentation/recipes/detail/pages/details_page.dart';
import 'package:food_otus/presentation/recipes/detail/widgets/favorite_widget.dart';
import 'package:food_otus/presentation/recipes/detail/widgets/ingredient_bloc.dart';
import 'package:food_otus/presentation/recipes/detail/widgets/step_block.dart';
import 'package:mockito/mockito.dart';

import '../../../domain/entities/recipe_mock.dart';
import '../../../domain/repositories/recipe_repository_test.mocks.dart';
import '../../../domain/repositories/user_repository_test.mocks.dart';

void main() {
  late MockUserLocalSource userLocalSource;
  late MockUserRemoteSource userRemoteSource;
  late MockRecipeLocalSource recipeLocalSource;
  late MockRecipeRemoteSource recipeRemoteSource;
  late RecipeRepository recipeRepository;
  late UserRepository userRepository;
  late RecipeBloc recipeBloc;

  Widget wrapWithMaterialApp(Widget widget) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavBloc>(
          create: (context) => NavBloc(repository: userRepository),
        ),
        BlocProvider<RecipeBloc>(create: (context) => recipeBloc),
      ],
      child: MaterialApp(home: widget),
    );
  }

  group("details recipe", () {
    setUp(() {
      userLocalSource = MockUserLocalSource();
      userRemoteSource = MockUserRemoteSource();
      recipeLocalSource = MockRecipeLocalSource();
      recipeRemoteSource = MockRecipeRemoteSource();

      userRepository = UserRepository(
        localSource: userLocalSource,
        remoteSource: userRemoteSource,
      );
      recipeRepository = RecipeRepository(
        remoteSource: recipeRemoteSource,
        localSource: recipeLocalSource,
      );

      recipeBloc = RecipeBloc(
        userRepository: userRepository,
        recipeRepository: recipeRepository,
      );

      when(userLocalSource.findUser()).thenReturn(null);
      when(recipeLocalSource.getPhotos(1)).thenReturn([]);
    });

    testWidgets("favorites", (widgetTester) async {
      await widgetTester.pumpWidget(
        wrapWithMaterialApp(const FavoritesWidget(
          status: false,
          id: 1,
        )),
      );
      await widgetTester.pump();
      var inkWell = find.byType(InkWell);
      await widgetTester.tap(inkWell);
      await widgetTester.pumpAndSettle();
      var findWidget =
          widgetTester.firstWidget(find.byType(SvgPicture)) as SvgPicture;
      expect(
        findWidget.colorFilter,
        const ColorFilter.mode(Colors.red, BlendMode.srcIn),
      );
    });

    testWidgets("not show ingredients", (widgetTester) async {
      await widgetTester.pumpWidget(wrapWithMaterialApp(
        DetailsPage(recipe: getRecipeEmpty()),
      ));
      await widgetTester.pumpAndSettle();
      expect(find.byType(IngredientBlock), findsNothing);
    });

    testWidgets("show ingredients", (widgetTester) async {
      await widgetTester.pumpWidget(wrapWithMaterialApp(
        DetailsPage(recipe: getRecipeFull()),
      ));
      await widgetTester.pumpAndSettle();
      expect(find.byType(IngredientBlock), findsOneWidget);
    });

    testWidgets("not show steps", (widgetTester) async {
      await widgetTester.pumpWidget(wrapWithMaterialApp(
        DetailsPage(recipe: getRecipeEmpty()),
      ));
      await widgetTester.pumpAndSettle();
      expect(find.byType(StepBlock), findsNothing);
    });

    testWidgets("show steps", (widgetTester) async {
      await widgetTester.pumpWidget(wrapWithMaterialApp(
        DetailsPage(recipe: getRecipeFull()),
      ));
      await widgetTester.pumpAndSettle();
      expect(find.byType(StepBlock), findsOneWidget);
    });
  });
}
