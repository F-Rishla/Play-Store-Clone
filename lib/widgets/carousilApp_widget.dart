import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:play_store_demo/models/carousel_mode.dart';

// ignore: must_be_immutable
class CarouselApp extends StatelessWidget {
  List<CarousilModel> carouselApp = [
    CarousilModel(
        bimg:
            "https://store-images.s-microsoft.com/image/apps.442.14492077886571533.b0266c29-bb30-438c-b201-6b7e235b7920.6ebc94e7-3c85-4277-bee7-bdb2b8ef12dc?q=90&w=256&h=384&mode=crop&format=jpg&background=%23FFFFFF",
        bclr: Color.fromARGB(255, 233, 139, 6),
        heading:
            "Easy & Fun PAW Patrol Kids game - Preschool &Toddler children boys &...",
        gimg:
            "https://image.api.playstation.com/vulcan/img/cfn/11307x4B5WLoVoIUtdewG4uJ_YuDRTwBxQy0qP8ylgazLLc01PBxbsFG1pGOWmqhZsxnNkrU3GXbdXIowBAstzlrhtQ4LCI4.png",
        gname: "PAW Patrol Rescu..",
        subname: "Budge Studios 3.5* rated for 3+Contains ads"),
    CarousilModel(
        bimg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHkPath-dLDJMVx4-muzgcPAgocaO2wZv9Wq9aTh1r7A&s",
        bclr: Color.fromARGB(255, 205, 53, 7),
        heading:
            "Easy & Fun PAW Patrol Kids game - Preschool &Toddler children boys &...",
        gimg:
            "https://www.metacritic.com/a/img/catalog/provider/6/12/6-1-285954-52.jpg",
        gname: "PAW Patrol Rescu..",
        subname: "Budge Studios 3.5* rated for 3+Contains ads"),
  ];
  CarouselApp({super.key});

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
        items: carouselApp.map((i) {
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
                                  "Update Available",
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
