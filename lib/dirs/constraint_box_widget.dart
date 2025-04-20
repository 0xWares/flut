import 'package:flutter/material.dart';

class ConstraintBoxWidget extends StatelessWidget {
  const ConstraintBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 200, minHeight: 100),
          child: ElevatedButton(onPressed: () {}, child: Text('Tap Me')),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 150, maxHeight: 80),
          child: Container(
            color: Colors.blue,
            child: Text('Limited Box', style: TextStyle(color: Colors.white)),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 120, height: 120),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            maxWidth: 300,
            minHeight: 50,
            maxHeight: 200,
          ),
          child: Container(
            color: Colors.amber,
            alignment: Alignment.center,
            child: Text('Responsive Container'),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            maxWidth: double.infinity,
            minHeight: 100,
            maxHeight: double.infinity,
          ),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(color: Colors.green),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 48, // Material Design minimum touch target
            minHeight: 48,
          ),
          child: TextButton(onPressed: () {}, child: Text('Accessible Button')),
        ),
        Row(
          children: [
            // Using SizedBox (fixed size)
            SizedBox(width: 100, child: Text('Fixed Width')),

            // Using ConstrainedBox (flexible constraints)
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
              child: Container(color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
