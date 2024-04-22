import 'package:flutter/material.dart';
import 'package:play_store_demo/models/recommend_model.dart';

// ignore: must_be_immutable
class RecommendListWidget extends StatelessWidget {
  List<RecommendModel> recommendList = [
    RecommendModel(
        img:
            "https://play-lh.googleusercontent.com/6EUEL-CTma0CU9XengD-o4vNRkfWZQfoCcET1p6hX53kJ_ZFoCqExzNXgr0ipMs3btg",
        txt1: "PDF Reader",
        txt2: "viewr",
        txt3: "4.7★"),
    RecommendModel(
        img:
            "https://www.ellis-brigham.com/media/wysiwyg/amasty/EB_Blog/2020/Dec/strava-tracker-app.jpg",
        txt1: "PDF Reader",
        txt2: "viewr",
        txt3: "4.7★"),
    RecommendModel(
        img: "https://www.forestapp.cc/img/og/en.png",
        txt1: "PDF Reader",
        txt2: "viewr",
        txt3: "4.7★"),
    RecommendModel(
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfCfOSb-vXHGNcD6I6J3sgL0Y-W-LSKIvMGvBPj1o6FQ&s",
        txt1: "PDF Reader",
        txt2: "viewr",
        txt3: "4.7★"),
    RecommendModel(
        img:
            "https://play-lh.googleusercontent.com/_sJ-ST-crO8lxIzTv44xv_hiZvA6X7X2-8jSjhha2RfYcGSgACRod38yA6dfmcJHy_M",
        txt1: "PDF Reader",
        txt2: "viewr",
        txt3: "4.7★"),
  ];
  RecommendListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: recommendList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          recommendList[index].img,
                          fit: BoxFit.fill,
                          height: 90,
                          width: 80,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(recommendList[index].txt1),
                        Text(recommendList[index].txt2),
                        Text(recommendList[index].txt3),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
