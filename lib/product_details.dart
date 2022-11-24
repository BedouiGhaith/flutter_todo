import 'package:flutter/material.dart';

import 'home/home.dart';

class ProductDetails extends StatefulWidget {
  final Game game;

  const ProductDetails(this.game);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int currentQuantity = 0;

  @override
  void initState() {
    currentQuantity = widget.game.quantity!;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.game.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Image.asset(widget.game.url, width: 460, height: 215)
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(widget.game.description!),
          ),
          Text("${widget.game.price} TND", textScaleFactor: 3),
          Text("Exemplaires disponibles : ${currentQuantity}"),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.shopping_basket_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Acheter", textScaleFactor: 2)
                ],
              ),
              onPressed: () {
                setState(() {
                  currentQuantity--;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
