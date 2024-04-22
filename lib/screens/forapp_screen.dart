import 'package:flutter/material.dart';
import 'package:play_store_demo/widgets/applist_widget.dart';
import 'package:play_store_demo/widgets/carousil_app_widget.dart';
import 'package:play_store_demo/widgets/recommend_list_widget.dart';
import 'package:play_store_demo/widgets/recommend_widget.dart';
import 'package:play_store_demo/widgets/suggest_widget.dart';

class ForApp extends StatelessWidget {
  const ForApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 280,
          child: CarouselApp(),
        ),
        SizedBox(height: 50, child: SuggestWidget()),
        SizedBox(
          height: 220,
          child: AppList(),
        ),
        const SizedBox(height: 50, child: RecommendWidget()),
        SizedBox(
          height: 300,
          child: RecommendListWidget(),
        ),
      ],
    ));
  }
}
