import 'package:flutter/material.dart';
import 'package:mac_flutter/fooderlich_theme.dart';
import 'package:mac_flutter/card_app/home.dart';
import 'package:mac_flutter/recipes_app/recipe.dart';
import 'package:mac_flutter/recipes_app/recipe_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();

    const title = 'Flutter Apprentice';

    return MaterialApp(
      title: title,
      theme: theme,
      home: const Home(title: title),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SafeArea(
//         child: ListView.builder(
//           itemCount: Recipe.samples.length,
//           itemBuilder: (BuildContext context, int index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return RecipeDetail(recipe: Recipe.samples[index]);
//                     },
//                   ),
//                 );
//               },
//               child: buildRecipeCard(Recipe.samples[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          const SizedBox(height: 14.0),
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}
