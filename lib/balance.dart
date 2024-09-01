import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class balancetext extends StatelessWidget {
  double balance;
  balancetext({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Bank Balance",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            NumberFormat.simpleCurrency().format(balance),
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
