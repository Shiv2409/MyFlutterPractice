import 'package:flutter/material.dart';
import 'package:flutter_mixup_all/widgets/drawer.dart';

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
          child: const Text("Welcome to Catalogue "),
          // child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
