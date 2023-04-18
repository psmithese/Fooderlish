import 'package:flutter/material.dart';
import 'package:fooderlish_app/constant/fooderlish_theme.dart';
import 'package:fooderlish_app/widget/circle_image.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderlichTheme.lightTextTheme.displayMedium,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.lightTextTheme.displaySmall,
                  )
                ],
              ),
              IconButton(
                onPressed: () {
                  const snackBar = SnackBar(content: Text("Favorite pressed"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
                icon:
                    Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
                iconSize: 30,
                color: Colors.red[400],
              )
            ],
          )
        ],
      ),
    );
  }
}
