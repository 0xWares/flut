import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Example')),
        body: Center(
          child: Stack(
            alignment:
                Alignment.center, // Centers children relative to the Stack
            clipBehavior: Clip.none, // Allows children to overflow visibly
            children: [
              // Background Card (Positioned at the bottom)
              Container(
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jane Doe',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Flutter Developer'),
                    SizedBox(height: 16),
                  ],
                ),
              ),

              // Profile Image (Positioned above the card)
              Positioned(
                top:
                    -40, // Overflows the Stack (requires clipBehavior: Clip.none)
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 3),
                    image: const DecorationImage(
                      image: NetworkImage('https://i.pravatar.cc/150?img=1'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Online Badge (Positioned on top of the image)
              Positioned(
                top: -20, // Adjusts relative to the Stack
                right: 53, // Positions from the right edge
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
