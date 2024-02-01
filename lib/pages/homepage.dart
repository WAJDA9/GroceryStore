import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshop/models/cart_model.dart';
import 'package:groceryshop/pages/cart.dart';
import 'package:groceryshop/widgets/groceryitemwidget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return CartPage();
                }
              )
            );

          },
        child: Icon(Icons.shopping_cart_outlined, color: Colors.white,)),
        
        body: Container(
          margin: const EdgeInsets.all(7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:13.0),
                child: Text("Good Morning,",
                textAlign: TextAlign.left,),
              ),
              Text("Let's order something fresh for you",
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              ),
              Padding(
      
                padding: const EdgeInsets.symmetric(vertical:13.0),
                child: Divider(),
              ),
              Expanded(
                child: Consumer<CartModel>(builder:(context,  value, child){
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: value.items.length,
                    itemBuilder: (context, index){
                      return GroceryItem(
                        name: value.items[index][0],
                        price: value.items[index][1],
                        image: value.items[index][2],
                        color: value.items[index][3],
                        onPressed: (){
  Provider.of<CartModel>(context, listen: false).addItems(index);
                      },
                      );
                    },
                  );
                },
              
                )
              )
          
            ],
          ),
        ),
      ),
    );
  }
}