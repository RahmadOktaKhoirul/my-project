import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), backgroundColor: Colors.purple),
      body: const Center(
        child: Text(
          "Selamat datang di Home Page!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
