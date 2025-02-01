import 'package:flutter/material.dart';
import 'package:learnapp/sceens/homepagesceen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(
        primaryColor: Color(0xff005d86),
      ),
      home: Homepagesceen(),
    );
  }
}