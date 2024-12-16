import 'package:flutter/material.dart';
import 'package:flutter_4/components/game_item.dart';
import 'package:flutter_4/models/cart_item.dart';
import 'package:flutter_4/models/game.dart';

class FavoritesPage extends StatefulWidget {
  final Function(Game) onFavoriteToggle;
  final List<Game> favoriteGames;
  final List<CartItem> cart;
  final Function(Game) addToCart;
  final Function(Game) removeFromCart;

  const FavoritesPage(
      {super.key,
      required this.onFavoriteToggle,
      required this.favoriteGames,
      required this.addToCart,
      required this.cart,
      required this.removeFromCart});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Отложенное",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: widget.favoriteGames.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 50,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Здесь пока ничего нет(",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 6 / 12,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: widget.favoriteGames.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GameItem(
                        game: widget.favoriteGames[index],
                        liked: widget.favoriteGames
                            .contains(widget.favoriteGames[index]),
                        onFavoriteToggle: () => widget
                            .onFavoriteToggle(widget.favoriteGames[index]),
                        quantityInCart: widget.cart
                            .firstWhere(
                              (position) =>
                                  position.id == widget.favoriteGames[index].id,
                              orElse: () => CartItem(
                                  widget.favoriteGames[index].id,
                                  0,
                                  widget.favoriteGames[index]),
                            )
                            .quantity,
                        addToCart: () =>
                            widget.addToCart(widget.favoriteGames[index]),
                        removeFromCart: () =>
                            widget.removeFromCart(widget.favoriteGames[index]));
                  })),
    );
  }
}
