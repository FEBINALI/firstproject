import 'package:flutter/material.dart';
import 'package:testapp/pages/mainpage.dart';

class billingdetails extends StatelessWidget {
  const billingdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Billing Details',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                 SizedBox(
                   height: 50,
                   child:
                Image.asset('assets/avatar.png')
                 )
              ],
              
            ),
             
            
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 240,
                 decoration: BoxDecoration(
                   color: Colors.grey.shade200,
                   borderRadius:BorderRadius.circular(10) ),
                  
                  child: Center(
                    child: Container(
                      width: 130,
                      height: 32,
                      decoration: BoxDecoration(
                   color: Colors.green.shade900,
                   borderRadius:BorderRadius.circular(8)),
                      
                    child:Padding(padding: EdgeInsets.all(4),
                      child:Text("Platinum",style: TextStyle(fontSize: 18,color: Colors.white,),textAlign:TextAlign.center ,),), )
                     
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
