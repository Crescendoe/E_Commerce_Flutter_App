import 'shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier { 

  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan',
      price: '219.99',
      description: 'You\'ve got the hops and the speed-lace up in shoes that enhance your game.',
      imagePath: 'lib/images/AirJordan.png',
    ),

    Shoe(
      name: 'Zoom FREAK',
      price: '235.99',
      description: 'The forward-thinking design of his latest signature shoe.',
      imagePath: 'lib/images/ZoomFreak.png',
    ),

    Shoe(
      name: 'KD Treys',
      price: '239.99',
      description: 'A secure midfoot strap is suited for scoring binges and defensive stops.',
      imagePath: 'lib/images/KDTrey.png',
    ),

    Shoe(
      name: 'Kyrie 6',
      price: '189.99',
      description: 'Bouncy cusioning is paired with soft yet supportive foam for responsiveness and smooth heel-to-toe transitions.',
      imagePath: 'lib/images/Kyrie.png',
    ),
  ];

  // List of items in user cart
  List<Shoe> userCart = [];

  get items => null;

  // Get List of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // Get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add item to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}