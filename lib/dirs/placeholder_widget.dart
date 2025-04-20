import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Placeholder Demo')),
      body: Center(
        child: Placeholder(
          fallbackHeight: 200,
          fallbackWidth: 300,
          color: Colors.blue, // Default: grey
          strokeWidth: 2, // Default: 2
        ),
      ),
    );
  }
}
