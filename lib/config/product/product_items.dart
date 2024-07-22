import 'package:flutter/material.dart';

class ProductItem {
  final int id;
  final String title;
  final IconData iconData;
  final double price;

  const ProductItem(
      {required this.title,
      required this.iconData,
      required this.price,
      required this.id});
}

const appProductItems = [
  ProductItem(
      title: 'Producto 1',
      iconData: Icons.ac_unit_outlined,
      price: 100.0,
      id: 1),
  ProductItem(
      title: 'Producto 2',
      iconData: Icons.ac_unit_outlined,
      price: 200.0,
      id: 2),
  ProductItem(
      title: 'Producto 3',
      iconData: Icons.ac_unit_outlined,
      price: 300.0,
      id: 3),
  ProductItem(
      title: 'Producto 4',
      iconData: Icons.ac_unit_outlined,
      price: 400.0,
      id: 4),
  ProductItem(
      title: 'Producto 5',
      iconData: Icons.ac_unit_outlined,
      price: 500.0,
      id: 5),
  ProductItem(
      title: 'Producto 6',
      iconData: Icons.ac_unit_outlined,
      price: 600.0,
      id: 6),
  ProductItem(
      title: 'Producto 7',
      iconData: Icons.ac_unit_outlined,
      price: 700.0,
      id: 7),
  ProductItem(
      title: 'Producto 8',
      iconData: Icons.ac_unit_outlined,
      price: 800.0,
      id: 8),
];
