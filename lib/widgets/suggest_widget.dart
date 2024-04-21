import 'package:flutter/material.dart';

class SuggestWidget extends StatelessWidget {
  const SuggestWidget({super.key});

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
