<<<<<<< HEAD
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
=======

// 1. Data Types Implementation

// Define Variables: You need to create variables of specific types and print their values.

// dart

int myInt = 10;
double myDouble = 10.5;
String myString = "Hello, Dart!";
bool myBool = true;
List<int> myList = [1, 2, 3, 4, 5];

print("Integer: $myInt");
print("Double: $myDouble");
print("String: $myString");
print("Boolean: $myBool");
print("List: $myList");

// 2. Type Conversion

// Implement Functions: Create a function that converts a string into both int and double.

// dart

void convertAndDisplay(String strNumber) {
  int convertedInt = int.parse(strNumber);
  double convertedDouble = double.parse(strNumber);
  
  print("String: '$strNumber' converted to int: $convertedInt and double: $convertedDouble");
}

// 3. Control Flow

// If-Else Statements: Create functions to check if a number is positive, negative, or zero, and determine voting eligibility based on age.

// dart

void checkNumber(int number) {
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Age $age: Eligible to vote.");
  } else {
    print("Age $age: Not eligible to vote.");
  }
}

// Switch Case: Use a switch statement to print the day of the week based on a number.

// dart

void printDayOfWeek(int day) {
  switch (day) {
    case 1: print("Monday"); break;
    case 2: print("Tuesday"); break;
    case 3: print("Wednesday"); break;
    case 4: print("Thursday"); break;
    case 5: print("Friday"); break;
    case 6: print("Saturday"); break;
    case 7: print("Sunday"); break;
    default: print("Invalid day.");
  }
}

// 4. Loops

// For Loop: Print numbers from 1 to 10.

// dart

void forLoopPrint() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// While Loop: Print numbers from 10 to 1.

// dart

void whileLoopPrint() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// Do-While Loop: Print numbers from 1 to 5.

// dart

void doWhileLoopPrint() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// 5. Combining Data Types and Control Flow

// Complex Example: Define a list of integers, iterate through it, print each number, and categorize them.

// dart

void categorizeNumbers(List<int> numbers) {
  for (int number in numbers) {
    print("Number: $number - " +
      (number % 2 == 0 ? "Even" : "Odd"));

    switch (number) {
      case var n when n >= 1 && n <= 10:
        print("$number is small.");
        break;
      case var n when n > 10 && n <= 100:
        print("$number is medium.");
        break;
      case var n when n > 100:
        print("$number is large.");
        break;
      default:
        print("$number is out of range.");
    }
  }
}

// Complete Program

// Here's the complete Dart program combining all the above sections:

// dart

void main() {
  // Data Types Implementation
  int myInt = 10;
  double myDouble = 10.5;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print("Integer: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Boolean: $myBool");
  print("List: $myList");

  // Type Conversion
  print("\nType Conversion:");
  convertAndDisplay("20");
  convertAndDisplay("15.75");

  // Control Flow
  print("\nControl Flow:");
  checkNumber(5);
  checkNumber(-3);
  checkNumber(0);
  checkVotingEligibility(20);
  checkVotingEligibility(17);

  // Switch Case
  print("\nDay of the Week:");
  printDayOfWeek(3); // Wednesday

  // Loops
  print("\nFor Loop:");
  forLoopPrint();

  print("\nWhile Loop:");
  whileLoopPrint();

  print("\nDo-While Loop:");
  doWhileLoopPrint();

  // Combining Data Types and Control Flow
  print("\nComplex Example:");
  List<int> numbers = [5, 12, 7, 45, 3, 102];
  categorizeNumbers(numbers);
}

void convertAndDisplay(String strNumber) {
  int convertedInt = int.parse(strNumber);
  double convertedDouble = double.parse(strNumber);
  
  print("String: '$strNumber' converted to int: $convertedInt and double: $convertedDouble");
}

void checkNumber(int number) {
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Age $age: Eligible to vote.");
  } else {
    print("Age $age: Not eligible to vote.");
  }
}

void printDayOfWeek(int day) {
  switch (day) {
    case 1: print("Monday"); break;
    case 2: print("Tuesday"); break;
    case 3: print("Wednesday"); break;
    case 4: print("Thursday"); break;
    case 5: print("Friday"); break;
    case 6: print("Saturday"); break;
    case 7: print("Sunday"); break;
    default: print("Invalid day.");
  }
}

void forLoopPrint() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoopPrint() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoopPrint() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

void categorizeNumbers(List<int> numbers) {
  for (int number in numbers) {
    print("Number: $number - " +
      (number % 2 == 0 ? "Even" : "Odd"));

    switch (number) {
      case var n when n >= 1 && n <= 10:
        print("$number is small.");
        break;
      case var n when n > 10 && n <= 100:
        print("$number is medium.");
        break;
      case var n when n > 100:
        print("$number is large.");
        break;
      default:
        print("$number is out of range.");
    }
  }
}
>>>>>>> 2dd9ea44829c2f233c10c48ce48f34768cb50218
