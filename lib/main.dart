import 'package:flutter/material.dart';
import 'package:groceryshop/models/cart_model.dart';
import 'package:groceryshop/pages/homepage.dart';
import 'package:groceryshop/pages/intropage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  Home(),
        ),
    );
  }
}

