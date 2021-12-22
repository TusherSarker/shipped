import 'package:flutter/material.dart';
import 'package:shipped/Iphones/iphoneOrder_pageDesign.dart';
import 'package:shipped/Iphones/iphone_list.dart';
import 'package:shipped/lists/Accessories/accessories_list.dart';
import 'package:shipped/screen/image_picker.dart';
import 'package:shipped/screen/login_screen.dart';
import 'package:shipped/screen/signup_page.dart';
import 'package:shipped/screen/splash_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shipped/screen/welcome/welcome.dart';
import 'Custom_Widzed/mother_nbbar.dart';
import 'Iphones/appale_phones.dart';
import 'home_page.dat.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen());
  }
}
