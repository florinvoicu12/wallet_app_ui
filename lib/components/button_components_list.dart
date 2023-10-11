import 'package:flutter/material.dart';
import 'package:wallet_app/components/button_component.dart';
import 'package:wallet_app/models/Button.dart';

class ButtonComponentsList extends StatelessWidget {
  const ButtonComponentsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              button_cards_demo.length,
              (index) => ButtonComponent(
                  svg: button_cards_demo[index].svg,
                  buttonTitle: button_cards_demo[index].buttonTitle)),
        ),
      ),
    );
  }
}
