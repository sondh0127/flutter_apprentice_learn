import 'package:flutter/material.dart';
import 'package:mac_flutter/fooderlich_theme.dart';
import 'package:mac_flutter/scrollable/scrollable_home.dart';
// import 'package:mac_flutter/card_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();

    return MaterialApp(
      title: 'Flutter Apprentice',
      theme: theme,
      // home: const Home(title: title),
      home: ScrollableHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
