import 'package:flutter/material.dart';
import 'package:play_store_demo/screens/screen_books/audio_screen.dart';
import 'package:play_store_demo/screens/screen_books/ebook_screen.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            title: const TabBar(isScrollable: true, tabs: [
              Tab(text: "Ebooks"),
              Tab(text: "Audiobooks"),
              Tab(text: "Comics"),
              Tab(text: "Generes"),
              Tab(text: "Top Selling"),
              Tab(text: "New Release"),
              Tab(text: "Top Free"),
            ]),
          ),
          body: const TabBarView(children: [
            EbookScreen(),
            AudioScreen(),
            AudioScreen(),
            AudioScreen(),
            AudioScreen(),
            AudioScreen(),
            AudioScreen(),
          ]),
        ));
  }
}
