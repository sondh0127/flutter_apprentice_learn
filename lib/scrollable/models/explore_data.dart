import 'package:mac_flutter/scrollable/models/post.dart';
import 'package:mac_flutter/scrollable/models/recipe/explore_recipe.dart';

class ExploreData {
  final List<ExploreRecipe> todayRecipes;
  final List<Post> friendPosts;

  ExploreData(
    this.todayRecipes,
    this.friendPosts,
  );
}
