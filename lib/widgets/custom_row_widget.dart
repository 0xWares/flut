import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  final String txt1;

  final Color clr1;

  final Widget link1;

  final String txt2;

  final Color clr2;

  final Widget link2;

  const CustomRowWidget({
    super.key,
    required this.txt1,
    required this.clr1,
    required this.link1,
    required this.txt2,
    required this.clr2,
    required this.link2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, left: 10, right: 10, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: InkWell(
              child: Container(
                width: 200,
                height: 200,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: clr1,
                ),
                child: Center(
                  child: Text(
                    txt1,
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
                  MaterialPageRoute(builder: (context) => link1),
                );
              },
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: InkWell(
              child: Container(
                width: 200,
                height: 200,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: clr2,
                ),
                child: Center(
                  child: Text(
                    txt2,
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
                  MaterialPageRoute(builder: (context) => link2),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
