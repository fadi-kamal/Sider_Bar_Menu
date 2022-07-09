import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_barmenu/provider/move_icon_Pro.dart';

// ignore: must_be_immutable
class SettingIcon extends StatelessWidget {
  SettingIcon({
    Key? key,
  }) : super(key: key);

  int dur = 500;
  @override
  Widget build(BuildContext context) {
    return Consumer<MoveIcons>(
      builder: (context, move, child) {
        return AnimatedPositioned(
            top: 220,
            left: move.setting,
            duration: Duration(milliseconds: dur),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: dur),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: move.settingColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                      move.getSetting();
                      move.getsettingColor();
                      move.getSettingText();
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Consumer<MoveIcons>(
                  builder: (context, text, child) {
                    return Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        child: AnimatedDefaultTextStyle(
                            duration: Duration(milliseconds: dur),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: move.settingText,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                            child: Text(
                              "${text.xSetting}",
                            )));
                  },
                )
              ],
            ));
      },
    );
  }
}
