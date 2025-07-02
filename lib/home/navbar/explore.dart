import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explore'), centerTitle: true),
      body: const Center(
        child: Text('Halaman Explore', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
