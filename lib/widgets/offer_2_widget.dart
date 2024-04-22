import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:play_store_demo/models/offer_model.dart';

// ignore: must_be_immutable
class OfferTwoWidget extends StatelessWidget {
  List<OfferModel> offerList = [
    OfferModel(
        bimg:
            "https://media.istockphoto.com/id/1171675830/photo/motorcycle-driver-riding-in-dolomite-pass-italy-europe.jpg?s=612x612&w=0&k=20&c=V0LxcYxRJxQ7wDVuGxMF_suUte5BKonn-a_EUyeNNQg=",
        tit1: "50% off your rides this cricket season",
        tit2: "Expires on 5/5/24",
        logo:
            "https://cdn.freebiesupply.com/logos/large/2x/uber-15-logo-png-transparent.png",
        tit: "Uber-Easy affordable trips",
        sub1: "Maps & Navigations",
        sub2: "4.5"),
    OfferModel(
        bimg:
            "https://composeclick.com/wp-content/uploads/2018/05/nature-1-1024x637.jpg",
        tit1: "Experiance the magic of AI-effect o",
        tit2: "Expires on 5/5/24 . Reward Available",
        logo:
            "https://seeklogo.com/images/I/inshot-logo-DF432CC897-seeklogo.com.png?v=638182132470000000",
        tit: "Uber-Easy affordable trips",
        sub1: "Maps & Navigations",
        sub2: "4.5")
  ];
  OfferTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        viewportFraction: 0.85,
        enableInfiniteScroll: false,
      ),
      items: offerList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(i.bimg), fit: BoxFit.fill)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            i.tit1,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            i.tit2,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(i.logo)),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    title: Text(
                      i.tit,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          i.sub1,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(i.sub2,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                )),
                            const Icon(
                              Icons.star,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    ));
  }
}
