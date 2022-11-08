import 'package:flutter/material.dart';

import '../../../../App/Resources/color_manager.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.title}) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(

            child:  Padding(
              padding: const EdgeInsets.all(12),
              child: Text(title,style: TextStyle(color: ColorManager.white
              ),),
            ),
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/header.png",),
                fit: BoxFit.fill,

                //fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration:  BoxDecoration(
                border: Border.all(color: ColorManager.grey),
                borderRadius:const  BorderRadius.all(
                    Radius.circular(50) //                 <--- border radius here
                ),

                color: ColorManager.white
            ),
          )
        ],
      ),
    );
  }
}
