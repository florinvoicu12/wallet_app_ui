import 'package:flutter/material.dart';

class Tile {
  final String title;
  final String subtitle;
  final String svg;
  final color;
  final BorderRadius borderRadius;

  Tile(
      {required this.title,
      required this.subtitle,
      required this.svg,
      required this.color,
      required this.borderRadius});
}

List<Tile> demo_tile_components = [
  Tile(
    title: "Statistics",
    subtitle: "Payments and income",
    svg: "assets/Heart.svg",
    color: Colors.deepPurpleAccent.withAlpha(100),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(22), topRight: Radius.circular(22)),
  ),
  Tile(
      title: "Transactions",
      subtitle: "Transaction history",
      svg: "assets/transaction-history.svg",
      color: Colors.deepPurpleAccent.withAlpha(100),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22))),
];
