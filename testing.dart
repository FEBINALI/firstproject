import 'package:flutter/material.dart';

class testing extends StatelessWidget {
  const testing({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
         childAspectRatio: 1,
            mainAxisSpacing: 0.5,
            crossAxisSpacing: 0.5,
      ),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card(
              color: Colors.amber,
              
            ),
           
          ],
        );
      }
    ),
  );
  }
}