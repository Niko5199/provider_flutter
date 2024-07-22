import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/presentation/providers/cart_provider.dart';

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
      body: _CartView(),
    );
  }
}

class _CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: SafeArea(
              child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = cartProvider.productsItems[index];
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 0),
                child: ListTile(
                  title: Text(item.title),
                  subtitle: Text("\$${item.price}"),
                ),
              );
            },
            itemCount: cartProvider.productsItems.length,
          )),
        ),
        const Divider(
          color: Colors.black,
          thickness: 14.0,
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.amberAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$${cartProvider.getTotalPrice().toString()}',
                  style: const TextStyle(
                      fontSize: 70, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('BUY'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
