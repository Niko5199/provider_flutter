import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/config/product/product_items.dart';
import 'package:provider/presentation/screens/cart/cart_screen.dart';

class Catalog extends StatelessWidget {
  static String name = "catalog_screen";
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed(Cart.name);
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
        backgroundColor: Colors.amberAccent,
      ),
      body: _CatalogView(),
    );
  }
}

class _CatalogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appProductItems.length,
      itemBuilder: (context, index) {
        final item = appProductItems[index];
        return _CustomListTile(title: item.title, icons: item.iconData);
      },
    ));
  }
}

class _CustomListTile extends StatefulWidget {
  final String title;
  final IconData icons;

  const _CustomListTile({
    required this.title,
    required this.icons,
  });

  @override
  State<_CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<_CustomListTile> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icons),
      title: Text(widget.title),
      trailing: IconButton(
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
        icon: flag ? const Icon(Icons.check) : const Text("Add"),
      ),
    );
  }
}
