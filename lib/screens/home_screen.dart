import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Search apps & games",
                    //contentPadding: const EdgeInsets.symmetric(vertical: 1),
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.keyboard_voice_outlined),
                    fillColor: const Color.fromARGB(255, 216, 225, 242),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Badge(
                      backgroundColor: Colors.blue,
                      label: Text("3"),
                      child: Icon(Icons.notifications_none_outlined),
                    ),
                    color: Colors.grey,
                  ),
                ],
                elevation: 10.0,
                automaticallyImplyLeading: false,
                expandedHeight: 50,
                floating: true,
                snap: true,
              )
            ];
          },
          // list of images for scrolling
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: double.infinity,
                color: Colors.amber,
              );
            },
            itemCount: 5,
          )),
    );
  }
}
