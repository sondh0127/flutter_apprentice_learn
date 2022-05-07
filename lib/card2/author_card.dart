import 'package:flutter/material.dart';
import 'package:mac_flutter/fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  final String author;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard(
      {Key? key, required this.author, required this.title, this.imageProvider})
      : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

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
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.author,
                      style: FooderlichTheme.lightTextTheme.headline2),
                  Text(widget.title,
                      style: FooderlichTheme.lightTextTheme.headline3),
                ],
              ),
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
              setState(() {
                _isFavorited = !_isFavorited;
              });
            }),
            icon: Icon(
              _isFavorited ? Icons.favorite_border : Icons.favorite,
              size: 30,
              color: Colors.purple.shade400,
            ),
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
