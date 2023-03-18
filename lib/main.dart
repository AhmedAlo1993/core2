import 'package:firstapp/view/facilities/facilities_page.dart';
import 'package:firstapp/view/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // ignore: prefer_const_constructors
  Widget build(context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: //  multi provider ,,,
            const FacilitiesPage(),
      );
}
