import 'package:flutter/material.dart';
class iphoneOrder extends StatelessWidget {
  const iphoneOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,
        title: Text("Design",style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(child: Container(
              child: Image.asset("name"),
            ))
          ],
        ),
      ),
    );
  }
}
