import 'models/item.dart';
import 'models/cart_item.dart';
import 'services/shopping_cart.dart';
import 'utils/file_utils.dart';

List<Item> products = [
  Item('Apple', 1.50),
  Item('Banana', 0.75),
  Item('Orange', 1.25),
  Item('Tomato', 0.80),
  Item('Cabbage', 1.00),
  Item('Milk (1L)', 1.20),
  Item('Yogurt', 0.90),
  Item('Bread', 1.50),
  Item('Eggs (dozen)', 2.00),
  Item('Rice (2kg)', 3.00),
  Item('Sugar (1kg)', 1.80),
  Item('Cooking Oil (1L)', 3.50),
  Item('Snacks (Chips)', 1.00),
  Item('Soda', 1.50),
  Item('Toilet Paper (4 rolls)', 1.50),
  Item('Detergent', 2.50),
  Item('Hand Soap', 0.80),
];

void displayProducts() {
  print('Available Products:');
  for (var product in products) {
    print('${product.name}: \$${product.price}');
  }
}

void main() {
  ShoppingCart cart = ShoppingCart();
  displayProducts();

  // Example of adding items to the cart
  cart.addItem(products[0], 3); // Adding 3 Apples
  cart.addItem(products[4], 2); // Adding 2 Cabbages

  print('\nItems in the cart:');
  cart.displayItems();

  double total = cart.calculateTotal(taxRate: 0.1); // 10% tax
  print('Total (with tax): \$${total.toStringAsFixed(2)}');

  // Save cart to file (optional)
  saveCartToFile(cart.items);

  // Load cart from file (optional)
  // cart.items = loadCartFromFile();
}
