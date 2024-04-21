import 'package:flutter/material.dart';
import 'package:play_store_demo/widgets/applist_widget.dart';
import 'package:play_store_demo/widgets/carousil_widget.dart';
import 'package:play_store_demo/widgets/suggest_widget.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 280,
          child: Carousel(),
        ),
        Container(height: 50, child: const SuggestWidget()),
        SizedBox(
          height: 400,
          child: AppList(),
        )
      ],
    ));
  }
}
