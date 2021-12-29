import 'package:flutter/material.dart';
import 'home_page.dat.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Shipped",
        debugShowCheckedModeBanner: false,
        home: homepage());
  }
}
