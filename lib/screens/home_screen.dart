import 'package:flutter/material.dart';
import 'package:play_store_demo/screens/app_screen.dart';
import 'package:play_store_demo/screens/book_screen.dart';
import 'package:play_store_demo/screens/game_screen.dart';
import 'package:play_store_demo/screens/offer_screen.dart';
import 'package:play_store_demo/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> screenlist = [
    const GameScreen(),
    const AppScreen(),
    SearchScreen(),
    const OfferScreen(),
    const BookScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Image.network(
              "https://m.economictimes.com/thumb/msid-94856434,width-1200,height-900,resizemode-4,imgsize-7588/google-play.jpg",
              //fit: BoxFit.cover,
              height: 0.25,
              width: 0.25),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Badge(
                backgroundColor: Colors.blue,
                label: Text("3"),
                child: Icon(Icons.notifications_none_outlined),
              ),
              color: Colors.black,
              iconSize: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn3.vectorstock.com/i/1000x1000/89/32/letter-f-in-a-flat-on-round-blue-background-vector-24368932.jpg"),
                radius: 17,
              ),
            )
          ]),
      body: screenlist[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 245, 246, 249),
        unselectedItemColor: const Color.fromARGB(255, 11, 10, 10),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_esports_outlined,
                color: Colors.black,
              ),
              label: "Games"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view_outlined,
                color: Colors.black,
              ),
              label: "Apps"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_outlined,
                color: Colors.black,
              ),
              label: "offers"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book_outlined,
                color: Colors.black,
              ),
              label: "Books"),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
