import 'package:flutter/material.dart';

class Drawerscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: AppBar(
            title: const Text("Drawer Screen"),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            backgroundColor: const Color.fromARGB(218, 216, 118, 224),
            foregroundColor: const Color.fromARGB(255, 242, 245, 248),
            toolbarHeight: 40,
          ),
        ),
      ),
    );
  }
}
