import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/widget/drawer.dart';
import 'package:testapp/widget/gridview.dart';

class widget1 extends StatelessWidget {
  const widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 List<String>values=[
   "assets/avatar.png",
   "assets/burger.png",
   "assets/desert.png",
   "assets/drinks.png",
   "assets/fries.png",
   "assets/hotdog.png",
   "assets/pizza.png",
   "assets/tree_v.png",
 ];

    return Column(
      children: [
        Container(
          height: 350,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'search',
                    icon: IconButton(
                        icon: new Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () => Scaffold.of(context).openDrawer()),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  ),
                ),



                SizedBox(
                  height: 15,
                ),



                Expanded(
                    child: gridview()),  

               

               
                ElevatedButton(
                    child: Text("book your space",
                        style: TextStyle(
                            fontSize: 14, color: Colors.blue.shade900)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.yellow.shade700),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ))),
                    onPressed: () => null)
                ]
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Category',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.blue.shade900),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
            child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            mainAxisSpacing: 0.5,
            crossAxisSpacing: 0.5,
          ),
          itemCount: 16,
          itemBuilder: (BuildContext context, int index) {
           

            return Column(
              children: [
                IconButton(
                  icon: Icon(Icons.medical_services),
                  color: Colors.orange,
                  onPressed: () => {},
                ),
                Text('medicine')
              ],
            );
          },
        )
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Center(
                child: Text(
                  '   ADVERTISING  \n     SPONSERS',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )),
        ),
      ],
    );
  }
}
