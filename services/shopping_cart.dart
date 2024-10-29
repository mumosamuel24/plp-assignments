import '../models/cart_item.dart';
import '../models/item.dart';

class ShoppingCart {
  List<CartItem> items = [];

  void addItem(Item item, int quantity) {
    items.add(CartItem(item, quantity));
  }

  void removeItem(Item item) {
    items.removeWhere((cartItem) => cartItem.item.name == item.name);
  }

  double calculateTotal({double taxRate = 0.0}) {
    double subtotal = items.fold(
        0, (sum, cartItem) => sum + (cartItem.item.price * cartItem.quantity));
    return subtotal * (1 + taxRate);
  }

  void displayItems() {
    if (items.isEmpty) {
      print("Your cart is empty.");
    } else {
      for (var cartItem in items) {
        print(
            '${cartItem.item.name}: \$${cartItem.item.price} x ${cartItem.quantity}');
      }
    }
  }
}
