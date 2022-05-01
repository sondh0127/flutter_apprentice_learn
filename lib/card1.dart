import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor\'s choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Son Hong Do';

  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO: Card1 Decorate Container
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 350,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mag1.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Stack(children: [
          Text(category, style: Theme.of(context).textTheme.bodyText1),
          Positioned(
            child: Text(title, style: Theme.of(context).textTheme.headline2),
            top: 20,
          ),
          Positioned(
            child:
                Text(description, style: Theme.of(context).textTheme.bodyText1),
            bottom: 30,
            right: 0,
          ),
          Positioned(
            child: Text(chef, style: Theme.of(context).textTheme.bodyText1),
            bottom: 10,
            right: 0,
          ),
        ]),
      ),
    );
  }
}
