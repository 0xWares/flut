import 'package:flutter/material.dart';

class FuncSizedBoxWidget extends StatelessWidget {
  const FuncSizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(color: Colors.blue),
            child: FractionallySizedBox(
              widthFactor: 0.6,
              heightFactor: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 600,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    heightFactor: 0.9,
                    child: Card(child: Center(child: Text('Item $index'))),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
