import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simplebuttonapp/balance.dart';
import 'package:simplebuttonapp/button_bottom.dart';
import 'package:simplebuttonapp/reset_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;
  void addMoney() async {
    setState(() {
      balance = balance + 500;
    });
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', balance);
  }

  @override
  void initState() {
    loadBalance();
    super.initState();
  }

  void loadBalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  void resetMoney() async {
    setState(() {
      balance = 0;
    });
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', balance);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 54, 54, 54),
          centerTitle: true,
          title: const Text("DigitalIS App"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              balancetext(
                balance: balance,
              ),
              resetButton(
                resetMoney: resetMoney,
              ),
              const SizedBox(
                height: 10,
              ),
              buttonchild(
                addmoneyFunction: addMoney,
              )
            ],
          ),
        ),
      ),
    );
  }
}
