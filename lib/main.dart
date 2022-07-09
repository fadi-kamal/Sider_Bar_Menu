import 'package:flutter/material.dart';
import 'package:side_barmenu/view/home.dart';

// import 'package:side_barmenu/side_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    
    );
  }
}
