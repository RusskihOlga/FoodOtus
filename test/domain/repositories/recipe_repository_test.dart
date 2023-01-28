import 'package:food_otus/data/data_sources/recipe_local_source.dart';
import 'package:food_otus/data/data_sources/recipe_remote_source.dart';
import 'package:food_otus/domain/repositories/recipe_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../entities/recipe_mock.dart';
import 'recipe_repository_test.mocks.dart';

@GenerateMocks([RecipeLocalSource, RecipeRemoteSource])
void main() {
  test('calculate calories', () {
    final localSource = MockRecipeLocalSource();
    final remoteSource = MockRecipeRemoteSource();
    final repository = RecipeRepository(
      remoteSource: remoteSource,
      localSource: localSource,
    );
    when(localSource.getIngredients(1)).thenReturn(getIngredients());

    expect(repository.getCaloriesOfRecipe(1), equals(1249.6));
  });
}
