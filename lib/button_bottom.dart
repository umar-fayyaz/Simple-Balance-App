// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class buttonchild extends StatelessWidget {
  buttonchild({super.key, required this.addmoneyFunction});

  void Function() addmoneyFunction;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
                minimumSize: const Size(double.infinity, 0)),
            onPressed: addmoneyFunction,
            child: const Text("Add Balance")));
  }
}
