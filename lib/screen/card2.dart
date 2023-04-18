import 'package:flutter/material.dart';
import 'package:fooderlish_app/constant/fooderlish_theme.dart';
import 'package:fooderlish_app/widget/author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage("assets/mag5.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: "Ese Smith",
              title: "Smoothie Connoisseur",
              imageProvider: AssetImage('assets/SmithEse.jpeg'),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Recipe',
                    style: FooderlichTheme.lightTextTheme.displayLarge,
                  ),
                ),
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Smoothies',
                      style: FooderlichTheme.lightTextTheme.displayLarge,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
