import 'package:flutter/material.dart';

class Transaction{
  String date;
  String rewards;
  String amount;
  int c;

  Transaction({this.date, this.rewards, this.amount, this.c});
}

List<Transaction> transactions = [
  Transaction(
      date: "12/Jun/2020",
      rewards: "10",
      amount:"\$10",
      c: 0xFF42A5F5
  ),
  Transaction(
      date: "10/Jun/2020",
      rewards: "25",
      amount:"\$25",
      c: 0xFF42A5F5
  ),
  Transaction(
      date: "08/Jun/2020",
      rewards: "39",
      amount:"\$39",
      c: 0xFF42A5F5
  ),
  Transaction(
      date: "04/Jun/2020",
      rewards: "19",
      amount:"\$19",
      c: 0xFF42A5F5
  ),
  Transaction(
      date: "02/Jun/2020",
      rewards: "98",
      amount:"\$98",
      c: 0xFF42A5F5
  ),
  Transaction(
      date: "01/Jun/2020",
      rewards: "51",
      amount:"\$51",
      c: 0xFF42A5F5
  )
];