import 'package:flutter/material.dart';
import 'package:iceman/Models/ice.dart';

class IceShop extends ChangeNotifier {
  //todo
  //create a list of existing ice cream in the shop
  final List<Ice> _shop = [
    Ice(
        name: 'Cherry Icecream',
        price: '1000',
        imagePath: 'lib/images/cherry.png'),
    Ice(
        name: 'Chocolate Icecream',
        price: '1500',
        imagePath: 'lib/images/chocolate.png'),
    Ice(
        name: 'Matcha Icecream',
        price: '2000',
        imagePath: 'lib/images/matcha.png'),
    Ice(
        name: 'Strawberry Icecream',
        price: '1800',
        imagePath: 'lib/images/strawberry.png'),
    Ice(
        name: 'Vanila Icecream',
        price: '800',
        imagePath: 'lib/images/vanila.png'),
    //xl
    Ice(
        name: 'Cherry Icecream xl',
        price: '1500',
        imagePath: 'lib/images/cherry.png'),
    Ice(
        name: 'Chocolate Icecream xl',
        price: '2500',
        imagePath: 'lib/images/chocolate.png'),
    Ice(
        name: 'Matcha Icecream xl',
        price: '3500',
        imagePath: 'lib/images/matcha.png'),
    Ice(
        name: 'Strawberry Icecream xl',
        price: '2800',
        imagePath: 'lib/images/strawberry.png'),
    Ice(
        name: 'Vanila Icecream xl',
        price: '1500',
        imagePath: 'lib/images/vanila.png'),
  ];
  //create a list of new ice cream in a bag
  final List<Ice> _iceBag = [];
  //create getter for both
  List<Ice> get shop => _shop;
  List<Ice> get iceBag => _iceBag;

  //method to add icecreams to the new list in the bag
  void addToBag(Ice ice) {
    _iceBag.add(ice);
    notifyListeners();
  }
  //method to remove icream from the new list in the bag

  void removeFromBag(Ice ice) {
    _iceBag.remove(ice);
    notifyListeners();
  }
}
