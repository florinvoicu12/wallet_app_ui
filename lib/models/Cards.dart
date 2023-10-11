import 'package:flutter/material.dart';

class Card {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color color;

  Card({
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  });
}

List<Card> demo_cards = [
  Card(
    balance: 1250.50,
    cardNumber: 4322,
    expiryMonth: 10,
    expiryYear: 27,
    color: Colors.blue,
  ),
  Card(
    balance: 3000.00,
    cardNumber: 5440,
    expiryMonth: 3,
    expiryYear: 26,
    color: Colors.green,
  ),
  Card(
    balance: 5250.43,
    cardNumber: 3243,
    expiryMonth: 12,
    expiryYear: 24,
    color: Colors.red,
  ),
];
