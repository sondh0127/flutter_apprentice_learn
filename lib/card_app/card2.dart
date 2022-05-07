import 'package:flutter/material.dart';
import 'package:mac_flutter/card_app/card2/author_card.dart';
import 'package:mac_flutter/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String category = 'Editor\'s choice';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mag5.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            // Author
            const AuthorCard(
              title: 'The Art of Dough',
              author: 'Son Hong Do',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  child: Text(
                    'Recipe',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                  bottom: 16,
                  right: 16,
                ),
                Positioned(
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Smoothies',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  bottom: 70,
                  left: 16,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
