import 'package:flutter/material.dart';
import '/widget/drawer.dart';
import '/widget/widget1.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

// List<dynamic> icons = [
//   "assets/images/avatar.png",
//   "assets/images/burger.png",
//   "assets/images/desert.png",
//   "assets/images/drinks.png",
//   "assets/images/fries.png",
//   "assets/images/hotdog.png",
//   "assets/images/pizza.png",
//   "assets/images/tree_v.png",
// ];
// List<String> services = [
//   "avatar",
//   "burger",
//   "deserts",
//   "drinks",
//   "fastfood",
//   "fries",
//   "hotdog",
//   "pizza",
// ];

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
        drawer: drawermenu(),
        body: widget1(),
      ),
    );
  }
}
