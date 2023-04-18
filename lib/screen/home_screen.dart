import 'package:flutter/material.dart';
import 'package:fooderlish_app/screen/card1.dart';
import 'package:fooderlish_app/screen/card3.dart';
import 'package:fooderlish_app/screen/card2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _seletedIndex = 0;
  static List pages = [const Card1(), const Card2(), const Card3()];

  void _onTappedItem(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Fooderlish", style: Theme.of(context).textTheme.titleLarge),
      ),
      body: pages[_seletedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _seletedIndex,
          onTap: _onTappedItem,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: "Card"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: "Card2"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: "Card3"),
          ]),
    );
  }
}
