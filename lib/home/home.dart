import 'package:flutter/material.dart';

import 'product_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Game> games = [];
  final String description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
          "sed do eiusmod tempor incididunt ut "
          "labore et dolore magna aliqua. Ut enim ad minim veniam, "
          "quis nostrud exercitation ullamco laboris nisi ut "
          "aliquip ex ea commodo consequat. Duis aute irure dolor "
          "in reprehenderit in voluptate velit esse cillum dolore "
          "eu fugiat nulla pariatur. Excepteur sint occaecat "
          "cupidatat non proident, sunt in culpa qui officia "
          "deserunt mollit anim id est laborum.";

  @override
  void initState() {
    games.add(Game("assets/images/dmc5.jpg", "Devil May Cry 5", description: description, price: 200, quantity: 3000));
    games.add(Game("assets/images/re8.jpg", "Resident Evil VIII", description: description, price: 200, quantity: 3000));
    games.add(Game("assets/images/nfs.jpg", "Need For Speed Heat", description: description, price: 100, quantity: 3000));
    games.add(Game("assets/images/rdr2.jpg", "Red Dead Redemption II", description: description, price: 150, quantity: 3000));
    games.add(Game("assets/images/fifa.jpg", "FIFA 22", description: description, price: 100, quantity: 3000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store ESPRIT"),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductInfo(games[index]);
        },
      )
    );
  }
}

class Game {
  final String url;
  final String title;
  final String? description;
  final int? price;
  final int? quantity;

  Game(this.url, this.title, {this.description, this.price, this.quantity});

  @override
  String toString() {
    return 'Game{url: $url, title: $title, description: $description, price: $price, quantity: $quantity}';
  }
}