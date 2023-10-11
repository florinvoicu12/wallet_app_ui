import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/components/button_components_list.dart';
import 'package:wallet_app/components/card_widgets_list.dart';
import 'package:wallet_app/components/tile_components_list.dart';

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
      bottomNavigationBar: _buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                _buildTitleSection(),
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
                TileComponentsList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _buildAppBar extends StatelessWidget {
  const _buildAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
    );
  }
}

class _buildTitleSection extends StatelessWidget {
  const _buildTitleSection({
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
