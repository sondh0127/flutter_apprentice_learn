import 'package:flutter/material.dart';
import 'package:mac_flutter/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  final String category = 'Editor\'s choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Son Hong Do';

  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO: Card1 Decorate Container
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mag2.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Reciped Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Vegan',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Carrots',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Vegan',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Vegan',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
