import 'package:flutter/material.dart';
import 'package:play_store_demo/widgets/book_widget/book_list_widget.dart';
import 'package:play_store_demo/widgets/book_widget/release_widget.dart';

class EbookScreen extends StatelessWidget {
  const EbookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(
            height: 70,
            child: ReleaseWidget(),
          ),
          SizedBox(
            height: 210,
            child: BookWidgets(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recently reduced ebooks",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Our latest offers",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            ],
          ),
          SizedBox(
            height: 210,
            child: BookWidgets(),
          ),
        ],
      )),
    );
  }
}
