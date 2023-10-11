import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/components/button_component.dart';
import 'package:wallet_app/components/card_widget.dart';
import 'package:wallet_app/components/tile_component.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.pink,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 32,
                color: Colors.grey,
              ),
            )
          ]),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TitleSection(),
                SizedBox(
                  height: 25,
                ),
                CardWidgetsList(controller: _controller),
                SizedBox(
                  height: 25,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.grey.shade700,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ButtonComponentsList(),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TileComponent(
                      title: "Statistics",
                      subtitle: "Payments and income",
                      svg: "assets/Heart.svg",
                      color: Colors.deepPurpleAccent.withAlpha(100),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19, right: 19),
                      child: const Divider(
                        height: 0.1,
                      ),
                    ),
                    TileComponent(
                        title: "Transactions",
                        subtitle: "Transaction history",
                        svg: "assets/transaction-history.svg",
                        color: Colors.deepPurpleAccent.withAlpha(100),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            bottomRight: Radius.circular(22))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
      child: PageView(controller: _controller, children: [
        CardWidget(
          balance: 1250.50,
          cardNumber: 4322,
          expiryMonth: 10,
          expiryYear: 27,
          color: Colors.blue,
        ),
        CardWidget(
          balance: 3000.00,
          cardNumber: 5440,
          expiryMonth: 3,
          expiryYear: 26,
          color: Colors.green,
        ),
        CardWidget(
          balance: 5250.43,
          cardNumber: 3243,
          expiryMonth: 12,
          expiryYear: 24,
          color: Colors.red,
        ),
      ]),
    );
  }
}

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
          children: [
            ButtonComponent(
              svg: "assets/wallet-svg.svg",
              buttonTitle: "Send",
            ),
            ButtonComponent(
              svg: "assets/wallet-svg.svg",
              buttonTitle: "Pay",
            ),
            ButtonComponent(
              svg: "assets/transaction-history.svg",
              buttonTitle: "Bills",
            ),
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Text(
              "My",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "Cards",
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.all(10),
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
            child: Icon(Icons.add)),
      ]),
    );
  }
}
