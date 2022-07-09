import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_barmenu/provider/move_icon_Pro.dart';

class NoticationIcons extends StatelessWidget {
  NoticationIcons({
    Key? key,
  }) : super(key: key);

  int dur = 500;
  @override
  Widget build(BuildContext context) {
    return Consumer<MoveIcons>(
      builder: (context, move, child) {
        return AnimatedPositioned(
            top: 360,
            left: move.notifcation,
            duration: Duration(milliseconds: 500),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: move.notifcationColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                      move.getNotifcation();
                      move.getnotifcationColor();
                      move.getNotifcationText();
                    },
                    icon: Icon(
                      Icons.notification_important,
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
                            duration: Duration(seconds: 1),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: move.notifcationText,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                            child: Text(
                              "${text.xNotifcation}",
                            )));
                  },
                )
              ],
            ));
      },
    );
  }
}
