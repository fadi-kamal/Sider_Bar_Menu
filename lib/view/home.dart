import 'package:flutter/material.dart';
import 'package:side_barmenu/view/side_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SideBarMenu()),
    );
  }
}
