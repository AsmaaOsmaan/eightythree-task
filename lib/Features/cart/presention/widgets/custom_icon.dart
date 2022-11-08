import 'package:flutter/material.dart';
import 'package:task/App/Resources/color_manager.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.onTap, required this.icon}) : super(key: key);
  final Function onTap;
 final IconData icon;

  @override
  Widget build(BuildContext context) {
    return       GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding:const EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color:ColorManager.lightPrimary),
        child:  Icon(
          icon,
          color:ColorManager.darkPrimary,
          size: 18,
        ),
      ),
    );
  }
}
