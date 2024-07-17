import 'package:flutter/material.dart';

class ProductItem {
  final String title;
  final IconData iconData;

  const ProductItem({required this.title, required this.iconData});
}

const appProductItems = [
  ProductItem(title: 'Titulo Principal 1', iconData: Icons.ac_unit_outlined),
  ProductItem(title: 'Titulo Principal 2', iconData: Icons.ac_unit_outlined),
  ProductItem(title: 'Titulo Principal 3', iconData: Icons.ac_unit_outlined),
  ProductItem(title: 'Titulo Principal 4', iconData: Icons.ac_unit_outlined),
  ProductItem(title: 'Titulo Principal 5', iconData: Icons.ac_unit_outlined),
  ProductItem(title: 'Titulo Principal 6', iconData: Icons.ac_unit_outlined),
  ProductItem(title: 'Titulo Principal 7', iconData: Icons.ac_unit_outlined),
  ProductItem(title: 'Titulo Principal 8', iconData: Icons.ac_unit_outlined),
];
