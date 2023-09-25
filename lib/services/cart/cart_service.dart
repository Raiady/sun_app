import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/cart/cart_item.dart';

class CartService with ChangeNotifier {
  List<CartItem> _items = getItems();
  List<CartItem> _cart = [];

  List<CartItem> get items => _items;

  List<CartItem> get cart => _cart;

  void addToCart(CartItem item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    _cart.remove(item);
    notifyListeners();
  }
}
