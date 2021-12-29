import 'dart:ui';
import 'package:flutter/material.dart';

class invoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 10,top: 10,right: 30),
              child: Text('Invoice No:', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(padding: EdgeInsets.only(left: 10,top: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name : ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                  Text("Mobile No : ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                  Text("Address : ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.43,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                    ),Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Product title :", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        Text("Price :", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                        Text("No. of item :", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10,top: 10, bottom: 30),
                child: Text("Net Bill : ",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan,
                        border: Border.all(color: Colors.white30, width: 2)),
                    child: Center(
                      child: Text("  Cash On Delivery  ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF))),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan,
                        border: Border.all(color: Colors.white30, width: 1)),
                    child: Center(
                      child: Text("  Payment  ",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
