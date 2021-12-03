import 'dart:math';

import 'package:flutter/material.dart';




class gridview extends StatelessWidget {
  const gridview({ Key? key }) : super(key: key);

  @override
  

  Widget build(BuildContext context) {
     List<String>values=[
   'assets/img1.jpg',
  'assets/img2.jpg',
  'assets/img3.jpg',
  'assets/img4.jpg',
  'assets/img5.jpg',
  'assets/img6.jpg',
  'assets/img7.jpg',
  'assets/img8.jpg',
 ];

          






    return  GridView.builder(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    
             return Card(
               elevation: 10,
               child: Center(child: Text(values[index]),),
             );
                   
                     
                    
                  },
                );
      
    
  }
}