import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final color;
  final void Function()? onPressed;
  const GroceryItem({super.key, required this.name, required this.image, required this.price, this.color,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            height: 100,
            image),
          Text(name),
          MaterialButton(onPressed: (){
            onPressed!();
          }, 
          color: color[800],
        child: Text(
          
          "\$"+price,
        style: TextStyle(
          color: Colors.white,
        fontWeight: FontWeight.bold,
        ),)),
        ],
      )
    );
  }
}