import 'package:flutter/material.dart';
import 'package:flutter_4/models/game.dart';

class GamePage extends StatelessWidget {
  final Game game;
  final bool liked;
  final int quantityInCart;
  final dynamic Function() addToCart;
  final dynamic Function() onFavoriteToggle;
  const GamePage(
      {super.key,
      required this.game,
      required this.liked,
      required this.onFavoriteToggle,
      required this.addToCart,
      required this.quantityInCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(game.name),
          actions: [
            IconButton(
              onPressed: () => onFavoriteToggle(),
              icon: liked
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border, color: Colors.black),
            )
          ],
        ),
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                    aspectRatio: 16 / 11,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(game.imageUrl),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                    )),
                Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Text(
                      game.name,
                      style: const TextStyle(
                          fontSize: 32, fontWeight: FontWeight.w900),
                      softWrap: true,
                    )),
                Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Text(
                      game.id,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                      softWrap: true,
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
                    child: Text(
                      game.description,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      softWrap: true,
                    )),
                const SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: quantityInCart > 0
                ? SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FloatingActionButton.extended(
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Navigator.pop(context, 2);
                      },
                      label: Text(
                        'В корзине ${quantityInCart}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      shape: const RoundedRectangleBorder(),
                    ),
                  )
                : SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FloatingActionButton.extended(
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        addToCart();
                        Navigator.pop(context, 2);
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        size: 24,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Купить сейчас за ${game.price} руб.',
                        style: const TextStyle(color: Colors.white),
                      ),
                      shape: const RoundedRectangleBorder(),
                    ),
                  ),
          )
        ]));
  }
}
