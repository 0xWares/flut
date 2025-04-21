import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(20),
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: Text("Click me"),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.purple,
              padding: EdgeInsets.all(12),
            ),
            child: Text('Terms & Conditions'),
            onLongPress: () {},
          ),
        ],
      ),
    );
  }
}
