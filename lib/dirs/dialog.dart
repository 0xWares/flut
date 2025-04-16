import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Dialog Box"),
                  content: Text("This is a dialog box"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("OK"),
                    ),
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              },
            );
          },
          child: Text("Click me to pop dialog box"),
        ),
      ),
    );
  }
}
