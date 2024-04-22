import 'package:flutter/material.dart';

class TopApp extends StatelessWidget {
  const TopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Top app screen")),
    );
  }
}
