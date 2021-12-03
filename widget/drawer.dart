import 'package:flutter/material.dart';


class drawermenu extends StatelessWidget {
  const drawermenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
 
  child: ListView(
   
    padding: EdgeInsets.zero,
    children: [
      
       DrawerHeader(
         child: Image.asset(
                      // ignore: unnecessary_string_escapes
                      "assets/images/tree_v.png",
                      
                    ),
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
      
      ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
  title: const Text('back'),
  onTap: () {
    // Update the state of the app
    // ...
    // Then close the drawer
    Navigator.pop(context);
  },
),
    ],
  ),
);
      
    
  }
}