import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RichText Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 16),
            children: <TextSpan>[
              const TextSpan(
                text: 'Hello ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              const TextSpan(
                text: '! This is ',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: 'RichText',
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' with a ',
                style: TextStyle(backgroundColor: Colors.yellow),
              ),
              TextSpan(
                text: 'clickable link',
                style: TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        // Handle click action
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Link clicked!')),
                        );
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
