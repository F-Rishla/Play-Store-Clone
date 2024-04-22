import 'package:flutter/material.dart';
import 'package:play_store_demo/widgets/offer_1_widget.dart';
import 'package:play_store_demo/widgets/offer_2_widget.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Limite-time offer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 300,
            child: OfferOneWidget(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Offer for apps you might like",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 325,
            child: OfferTwoWidget(),
          ),
          ListTile(
            title: const Text("Games on sale",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
          SizedBox(
            height: 325,
            child: OfferTwoWidget(),
          ),
        ],
      )),
    );
  }
}
