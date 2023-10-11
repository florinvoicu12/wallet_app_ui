import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TileComponent extends StatelessWidget {
  const TileComponent({
    super.key,
    required this.svg,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.borderRadius,
  });

  final String svg, title, subtitle;
  final color;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Colors.white54,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22), color: color),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(svg),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 33,
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
