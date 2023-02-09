import 'package:flutter/material.dart';
import 'package:mac_flutter/scrollable/screens/explore.dart';
import 'package:mac_flutter/scrollable/screens/recipes.dart';
import 'package:mac_flutter/scrollable/screens/tobuy.dart';

class ScrollableHome extends StatefulWidget {
  ScrollableHome({Key? key}) : super(key: key);

  @override
  State<ScrollableHome> createState() => _ScrollableState();
}

class _ScrollableState extends State<ScrollableHome> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    ToBuyScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollableHome'),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'To Buy',
          )
        ],
        selectedItemColor: theme.textSelectionTheme.selectionColor,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
