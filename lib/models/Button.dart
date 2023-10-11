class Button {
  final String svg;
  final String buttonTitle;

  Button({required this.svg, required this.buttonTitle});
}

List<Button> button_cards_demo = [
  Button(
    svg: "assets/wallet-svg.svg",
    buttonTitle: "Send",
  ),
  Button(
    svg: "assets/wallet-svg.svg",
    buttonTitle: "Pay",
  ),
  Button(
    svg: "assets/transaction-history.svg",
    buttonTitle: "Bills",
  ),
];
