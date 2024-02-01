import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  List _items = [
    ["avocado","4.00","lib/images/avocado.png",Colors.green],
    ["banana","2.00","lib/images/banana.png",Colors.yellow],
    ["chicken","5.00","lib/images/chicken.png",Colors.brown],
    ["water","1.00","lib/images/water.png",Colors.blue]
  ];
  get items => _items;
  List _cartItems = [];
  get cartItems => _cartItems;
  void addItems(index){
    _cartItems.add(items[index]);
    notifyListeners();
  }
  void removeItems(index){
    _cartItems.removeAt(index);
    notifyListeners();
  }
  String calculatePrice(){
    double total = 0;
    for(int i=0;i<_cartItems.length;i++){
      total = total + double.parse(_cartItems[i][1]);
    }
    return total.toString() + "\$";
  }
}