import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Shivam";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter World by $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
