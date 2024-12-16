import 'package:flutter_4/models/game.dart';

class CartItem {
  final String id;
  int quantity;
  final Game data;

  CartItem(this.id, this.quantity, this.data);
}
