import 'package:flutter/material.dart';
import 'bar.dart';
import 'actionbutton.dart';
import 'drawerscreen.dart';

class Metlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: AppBar(
            title: Text('Metlist'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 200,
                          height: 200,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 224, 165, 56),
                          ),
                          child: Center(
                            child: Text(
                              "App Bar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bar()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 69, 135, 233),
                          ),
                          child: Center(
                            child: Text(
                              "Floating Action Button",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ActionButton()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 137, 224, 56),
                          ),
                          child: Center(
                            child: Text(
                              "Drawer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Drawerscreen()),
                      );
                    },
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 56, 224, 210),
                        ),
                        child: Center(
                          child: Text(
                            "Sample text",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
