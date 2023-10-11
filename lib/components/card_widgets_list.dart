import 'package:flutter/material.dart';
import 'package:wallet_app/components/card_widget.dart';
import 'package:wallet_app/models/Cards.dart';

class CardWidgetsList extends StatelessWidget {
  const CardWidgetsList({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // child: PageView(controller: _controller, children: [
      child: ListView(children: [
        Row(
          children: List.generate(
              demo_cards.length,
              (index) => CardWidget(
                  balance: demo_cards[index].balance,
                  cardNumber: demo_cards[index].cardNumber,
                  expiryMonth: demo_cards[index].expiryMonth,
                  expiryYear: demo_cards[index].expiryYear,
                  color: demo_cards[index].color)),
        ),
      ]),
    );
  }
}
