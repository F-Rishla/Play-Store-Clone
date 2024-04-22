import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: const Text("Recommended for you",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
      ),
    );
  }
}
