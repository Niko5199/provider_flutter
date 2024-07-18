import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  static String name = "cart_screen";
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
    );
  }
}
