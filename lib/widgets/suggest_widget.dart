import 'package:flutter/material.dart';
import 'package:play_store_demo/models/suggest_model.dart';

// ignore: must_be_immutable
class SuggestWidget extends StatelessWidget {
  List<SuggestModel> headings=[
    SuggestModel(lead: "Sponsored", title: ".  Suggested for you")
  ];

   SuggestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListTile(
        leading: const Text(
          "Sponsored",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        title: const Text(
          ".  Suggested for you",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing:
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
      )),
    );
  }
}
