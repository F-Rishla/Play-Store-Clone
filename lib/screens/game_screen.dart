import 'package:flutter/material.dart';
import 'package:play_store_demo/screens/category_screen.dart';
import 'package:play_store_demo/screens/for_you.dart';
import 'package:play_store_demo/screens/kid_screen.dart';
import 'package:play_store_demo/screens/premium_screen.dart';
import 'package:play_store_demo/screens/top_chat.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<Widget> gameScreens = [
    const ForYouScreen(),
    const TopChat(),
    const KidScreen(),
    const PremiumScreen(),
    const CategoryScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const TabBar(isScrollable: true, tabs: [
              Tab(text: "For you"),
              Tab(text: "Top charts"),
              Tab(text: "Kids"),
              Tab(text: "Premium"),
              Tab(text: "Categories"),
            ]),
          ),
          body: const TabBarView(children: [
            ForYouScreen(),
            TopChat(),
            KidScreen(),
            PremiumScreen(),
            CategoryScreen()
          ]),
        ));
  }
}
