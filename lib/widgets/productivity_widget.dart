import 'package:flutter/material.dart';

class ProductivityWidget extends StatelessWidget {
  const ProductivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: const Text("Productivity",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
      ),
    );
  }
}
