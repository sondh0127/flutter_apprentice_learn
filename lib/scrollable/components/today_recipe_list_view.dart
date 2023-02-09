import 'package:flutter/material.dart';
import 'package:mac_flutter/scrollable/models/recipe/explore_recipe.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Recipe of the Day 🍳',
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(height: 16),
        Container(
          height: 400,
          color: Colors.grey,
        )
      ]),
    );
  }

  // TODO: Add buildCard() widget here
}
