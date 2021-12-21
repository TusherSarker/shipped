import 'package:flutter/material.dart';
class invoice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/9,
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 30),
              child: Text('Invoice No:', style: TextStyle(fontSize: 18)),
            ),SizedBox(height: 20,),
            Flexible(
                child: Column(
                  children: [
                    Row(children: [
                      Text("Name : ",style: TextStyle(inherit: true,fontSize: 24)),
                    ],),
                    Row(
                      children: [
                        Text("Mobile No : ", style: TextStyle(inherit: true,fontSize: 24)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Address : ", style: TextStyle(fontSize: 24)),
                      ],
                    ),
                  ],
                )),
           Flexible(
             flex: 6,
               child: Column(
             children: [
               Flexible(
                   flex: 1,
                   child: Container(
                     padding: EdgeInsets.all(10),
                     child: Container(
                       padding: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.black, width: 1)),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Flexible(
                             flex: 1,
                             child: ListView(
                                 children:[
                                   Container(
                                     child: Image.asset(
                                         "assets/images/splash_1.png",),
                                     height: MediaQuery.of(context).size.height/6,
                                   ),
                                 ]
                             ),
                           ),
                           SizedBox(
                             width: 10,
                           ),
                           Flexible(
                             flex: 1,
                             child: ListView(
                               children: [
                                 Text(
                                   "Product title :",
                                   style: TextStyle(fontSize: 18),
                                 ),
                                 Text("Price :", style: TextStyle(fontSize: 24)),
                                 Text("No. of item :",
                                     style: TextStyle(fontSize: 18)),
                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                   )),
               Flexible(flex: 1,
                 child: Container(
                     alignment: Alignment.topRight,
                     padding: EdgeInsets.only(top: 10,right: 30),
                     child: Text("Net Bill : \$500", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold))),
               ),
               Flexible(
                 flex: 1,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10, right: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         height: MediaQuery.of(context).size.height/15,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                           color : Colors.cyan,
                             border: Border.all(color: Colors.white30, width: 2)),
                         child: Center(
                           child: Text("  Cash On Delivery  ",
                               style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF))),
                         ),
                       ),
                       Container(
                           height: MediaQuery.of(context).size.height/15,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                           color: Colors.cyan,
                             border: Border.all(color: Colors.white30, width: 1)),
                         child: Center(
                           child: Text("  Payment  ",
                               style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF))),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
             ],
           ))
          ],
        ),
      ),
    );
  }
}
