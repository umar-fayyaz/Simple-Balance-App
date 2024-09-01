import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class resetButton extends StatelessWidget {
  void Function() resetMoney;
  resetButton({super.key, required this.resetMoney});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[900]),
                onPressed: resetMoney,
                child: const Text("Reset")),
          ],
        ));
  }
}
