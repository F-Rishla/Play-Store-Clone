import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:play_store_demo/models/applist_model.dart';

// ignore: must_be_immutable
class AppList extends StatelessWidget {
  List<AppListModel> list = [
    AppListModel(
        logo1:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-yycUXf6ede-q-1aUeE8nNIADsj6WlJKdWecMCx0XMg&s",
        title1: "Tower of God: New World",
        subtit1: "Action . Trctical shooter ",
        subtit2: "4.4 ★ 115MB",
        logo2:
            "https://play-lh.googleusercontent.com/mtBD6OcJd43vkPft8ZsDFBeg4hDTUewftuJA_IcRK_cpYpFNONw3Kpx4dHpUJa87Xw=w2560-h1440-rw",
        title2: "Township",
        subti3: "Action . Trctical shooter ",
        subtit4: "4.4 ★ 115MB",
        logo3:
            "https://supercell.com/images/4c0ab0c1fb2958e72103f81632fee096/og_clashofclans.f3149338.jpg",
        title3: "Clash of Clans",
        subtitle5: "Action . Trctical shooter ",
        subtit6: "4.4 ★ 115MB"),
    AppListModel(
        logo1:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT35YiQDpJ9rT413dzPyamsXlppToY2WqeBCP849QPiSQ&s",
        title1: "Clash of Clanes",
        subtit1: "Action . Trctical shooter ",
        subtit2: "4.4 ★ 115MB",
        logo2:
            "https://e1.pxfuel.com/desktop-wallpaper/38/42/desktop-wallpaper-archer-queen-clash-of-clans-and-game-archer-queen.jpg",
        title2: "Clash of Clanes",
        subti3: "Action . Trctical shooter ",
        subtit4: "4.4 ★ 115MB",
        logo3:
            "https://c4.wallpaperflare.com/wallpaper/277/122/443/clash-of-clans-archers-bow-and-arrows-wallpaper-preview.jpg",
        title3: "Clash of Clanes",
        subtitle5: "Action . Trctical shooter ",
        subtit6: "4.4 ★ 115MB")
  ];
  AppList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CarouselSlider(
        options: CarouselOptions(
          height: 250.0,
          viewportFraction: 0.85,
          enableInfiniteScroll: false,
        ),
        items: list.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      i.logo1,
                      width: 80,
                      height: 80,
                    ),
                    title: Text(
                      i.title1,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(i.subtit1,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black)),
                        Text(i.subtit2,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black))
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Image.network(
                      i.logo2,
                      width: 80,
                      height: 80,
                    ),
                    title: Text(i.title2,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(i.subti3,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black)),
                        Text(i.subtit4,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black))
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Image.network(
                      i.logo3,
                      width: 80,
                      height: 80,
                    ),
                    title: Text(i.title3,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(i.subtitle5,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black)),
                        Text(i.subtit6,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black))
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        }).toList(),
      )),
    );
  }
}
