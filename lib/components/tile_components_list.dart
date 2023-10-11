import 'package:flutter/material.dart';
import 'package:wallet_app/components/tile_component.dart';
import 'package:wallet_app/models/Tile.dart';

class TileComponentsList extends StatelessWidget {
  const TileComponentsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            demo_tile_components.length,
            (index) => TileComponent(
                  svg: demo_tile_components[index].svg,
                  title: demo_tile_components[index].title,
                  subtitle: demo_tile_components[index].subtitle,
                  borderRadius: demo_tile_components[index].borderRadius,
                  color: demo_tile_components[index].color,
                )));
  }
}
