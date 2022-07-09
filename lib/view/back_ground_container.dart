import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_barmenu/provider/move_icon_Pro.dart';

// ignore: must_be_immutable
class BackGroundContainer extends StatelessWidget {
  BackGroundContainer({
    Key? key,
  }) : super(key: key);
  Color blackColor = Color.fromARGB(255, 53, 53, 53);
  Color lightColor = Color.fromARGB(255, 237, 237, 237);
int dur = 700; 
  @override
  Widget build(BuildContext context) {
    return Consumer<MoveIcons>(
      builder: (context, _Width, child) {
        return AnimatedPositioned(
          
          duration: Duration(milliseconds: dur ),
          child: AnimatedContainer(
            
              height: double.infinity,
              width: _Width.width,
              decoration: BoxDecoration(color: lightColor, boxShadow: [
                BoxShadow(
                  blurRadius: 20.0,
                  color: blackColor.withOpacity(0.5),
                )
              ]),
              
              duration: Duration(milliseconds: dur)
              
              ),
        );
      },
    );
  }
}
