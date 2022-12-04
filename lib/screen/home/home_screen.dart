import 'package:flutter/material.dart';

part 'home_banner.dart';
part 'home_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _Banner(),
          SizedBox(height: 16),
          _Section(
            title: "セクション１",
          ),
          SizedBox(height: 16),
          _Section(
            title: "セクション2",
          ),
          SizedBox(height: 16),
          _Section(
            title: "セクション3",
          ),
        ],
      ),
    );
  }
}
