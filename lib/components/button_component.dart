import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key,
    required this.svg,
    required this.buttonTitle,
  });

  final String svg;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            height: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
            ),
            width: 100,
            child: Center(
              child: SvgPicture.asset(
                svg,
                width: 40,
              ),
            ),
          ),
        ),
        Text(
          buttonTitle,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
