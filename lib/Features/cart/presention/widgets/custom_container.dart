import 'package:flutter/material.dart';
import 'package:task/App/Resources/color_manager.dart';

import '../../../../App/Resources/size_config.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(

      height: SizeConfig.defaultSize!*6,
      width:SizeConfig.defaultSize!*6,
      decoration:  BoxDecoration(
          border: Border.all(color: ColorManager.customContainer),
          borderRadius:const  BorderRadius.all(
              Radius.circular(5.0) //                 <--- border radius here
          ),

          color: ColorManager.customContainer
      ),
    );
  }
}
