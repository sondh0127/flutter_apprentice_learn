import 'package:flutter/material.dart';
import 'package:mac_flutter/fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String author;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard(
      {Key? key, required this.author, required this.title, this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(author, style: FooderlichTheme.lightTextTheme.headline2),
                  Text(title, style: FooderlichTheme.lightTextTheme.headline3),
                ],
              ),

              // TODO: AuthorCard Decorate IconButton
            ],
          ),
          IconButton(
            iconSize: 30,
            color: Colors.grey.shade400,
            onPressed: (() {
              const snackbar = SnackBar(
                content: Text('Favorite button pressed'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }),
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  final double imageRadius;
  final ImageProvider? imageProvider;

  const CircleImage({Key? key, this.imageRadius = 20, this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
