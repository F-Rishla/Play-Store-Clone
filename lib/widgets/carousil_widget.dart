import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:play_store_demo/models/carousel_mode.dart';

// ignore: must_be_immutable
class Carousel extends StatelessWidget {
  List<CarousilModel> carouselList = [
    CarousilModel(
        bimg: "https://www.numuki.com/images/category/paw-patrol.jpg",
        bclr: Colors.blue,
        heading:
            "Easy & Fun PAW Patrol Kids game - Preschool &Toddler children boys &...",
        gimg: "https://i.ytimg.com/vi/dNZN3-wDYzk/maxresdefault.jpg",
        gname: "PAW Patrol Rescu..",
        subname: "Budge Studios 3.5* rated for 3+Contains ads"),
    CarousilModel(
        bimg: "https://i.ytimg.com/vi/HY4jCjufLG8/maxresdefault.jpg",
        bclr: const Color.fromARGB(255, 215, 106, 3),
        heading:
            "fallout Shelter puts you in control of a state-of-the-art undergroun vau...",
        gimg:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2015/07/Fallout-Shelter-Photo-Mode.png",
        gname: "Fallout Shelter",
        subname: "Bethesda Softwork... 4.3*  Rated for 12+")
  ];

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CarouselSlider(
        options: CarouselOptions(
          height: 280.0,
          viewportFraction: 0.85,
          enableInfiniteScroll: false,
        ),
        items: carouselList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 500,
                    //width: MediaQuery.of(context).size.width,
                    //margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(i.bimg), fit: BoxFit.fill)),
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color:bclr ,
                                  color: i.bclr,
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0),
                                  ),
                                ),
                                child: const Text(
                                  "Trending",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(i.heading,
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 247, 246, 246),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  leading: Image.network(
                                    i.gimg,
                                    width: 50,
                                    height: 50,
                                  ),
                                  title: Text(
                                    i.gname,
                                    style: const TextStyle(
                                        fontSize: 14, color: Colors.black),
                                    maxLines: 1,
                                  ),
                                  subtitle: Text(
                                    i.subname,
                                    style: const TextStyle(
                                        fontSize: 14, color: Colors.black),
                                    maxLines: 1,
                                  ),
                                  trailing: Column(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 241, 231, 231)),
                                        child: const Text("install",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            )),
                                      ),
                                      const Text(
                                        "In-app purchase",
                                        style: TextStyle(fontSize: 5),
                                      )
                                    ],
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      )),
    );
  }
}
