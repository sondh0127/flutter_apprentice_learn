import 'package:flutter/material.dart';
import 'package:mac_flutter/scrollable/api/mock_fooderlich_service.dart';
import 'package:mac_flutter/scrollable/components/today_recipe_list_view.dart';
import 'package:mac_flutter/scrollable/models/explore_data.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      // initialData: InitialData,
      builder: (BuildContext context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          return TodayRecipeListView(recipes: recipes);
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
