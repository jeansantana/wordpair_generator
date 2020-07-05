// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:wordpair_generator/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreenMaterial();
    /* if (Platform.isAndroid) {
      return HomeScreenMaterial();
    } else {
      return HomeScreenCupertino();
    } */
  }
}
