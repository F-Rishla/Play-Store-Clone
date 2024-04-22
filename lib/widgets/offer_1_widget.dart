import 'package:flutter/material.dart';

class OfferOneWidget extends StatelessWidget {
  const OfferOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
          ),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    "https://assets.gqindia.com/photos/645c750df0141edcb0cc1771/16:9/w_1280,c_limit/100-best-games-hp-b.jpg",
                  )),
              const Text("Homescapes . Expires on 6/7/12",
                  style: TextStyle(fontSize: 12, color: Colors.black26)),
              const Text(
                "Get a unique offer during the innespot Mystry expedition!",
                maxLines: 2,
              ),
              const Text(
                "Learn More",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
