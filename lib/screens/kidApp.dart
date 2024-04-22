import 'package:flutter/material.dart';

class KidApp extends StatelessWidget {
  const KidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SafeArea(child: Text("kid app screen"))),
    );
  }
}
