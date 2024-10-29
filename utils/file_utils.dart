import 'dart:convert';
import 'dart:io';
import '../models/cart_item.dart';
import '../models/item.dart';

void saveCartToFile(List<CartItem> items) {
  var json = jsonEncode(items
      .map((item) => {
            'name': item.item.name,
            'price': item.item.price,
            'quantity': item.quantity
          })
      .toList());
  File('cart.json').writeAsStringSync(json);
}

List<CartItem> loadCartFromFile() {
  var jsonString = File('cart.json').readAsStringSync();
  var jsonList = jsonDecode(jsonString);
  List<CartItem> items = [];
  for (var jsonItem in jsonList) {
    items.add(CartItem(
        Item(jsonItem['name'], jsonItem['price']), jsonItem['quantity']));
  }
  return items;
}
