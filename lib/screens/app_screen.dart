import 'package:flutter/material.dart';
import 'package:play_store_demo/screens/categoryApp.dart';
import 'package:play_store_demo/screens/forapp_screen.dart';
import 'package:play_store_demo/screens/kidApp.dart';
import 'package:play_store_demo/screens/topApp_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const TabBar(tabs: [
              Tab(text: "For you"),
              Tab(text: "Top charts"),
              Tab(text: "Kids"),
              Tab(text: "Categories"),
            ]),
          ),
          body: const TabBarView(
              children: [ForApp(), TopApp(), KidApp(), CategoryApp()]),
        ));
  }
}
