import 'package:flutter/material.dart';
import 'metlist.dart';

class Bar extends StatelessWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: AppBar(
            title: Text('This is Appbar'),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            elevation: 10,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Metlist()),
                  );
                },
                icon: Icon(Icons.store),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Metlist()),
                  );
                },
                icon: Icon(Icons.skip_next),
              ),
            ],
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Metlist()),
                );
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
      body: Center(child: Text('This page is for designing app bar')),
    );
  }
}
