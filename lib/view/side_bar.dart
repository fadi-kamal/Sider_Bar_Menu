import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_barmenu/model/contact_icon.dart';
import 'package:side_barmenu/model/home_icon.dart';
import 'package:side_barmenu/model/login_icon.dart';
import 'package:side_barmenu/model/notifcation_icon.dart';
import 'package:side_barmenu/model/person_icon.dart';
import 'package:side_barmenu/model/setting_icon.dart';
import 'package:side_barmenu/provider/move_icon_Pro.dart';
import 'back_ground_container.dart';

class SideBarMenu extends StatefulWidget {
  SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  bool isActvie = false;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MoveIcons(),
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  BackGroundContainer(),
                  HomeIcons(),
                  PersonIcons(),
                  SettingIcon(),
                  ContactIcons(),
                  NoticationIcons(),
                  LogInIcons(),
                  Consumer<MoveIcons>(builder: (context, move, child) {
                    return Positioned(
                        left: 5,
                        top: 20,
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                            if (isActvie) {
                              _controller.reverse();
                              move.LableDefualt();
                              move.getDefulatWidth();
                            } else {
                              _controller.forward();
                              move.LableText();
                              move.getWidth();
                            }
                            isActvie = !isActvie;
                          },
                          child: AnimatedIcon(
                              icon: AnimatedIcons.menu_close,
                              progress: _controller,
                              size: 40,
                              color: isActvie
                                  ? Colors.red
                                  : Color.fromRGBO(83, 191, 157, 1)),
                        ));
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
