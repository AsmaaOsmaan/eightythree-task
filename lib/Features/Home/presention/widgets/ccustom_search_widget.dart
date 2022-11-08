import 'package:flutter/material.dart';
import 'package:task/App/Resources/size_config.dart';

import '../../../../App/Resources/color_manager.dart';
import '../../../../App/Resources/text_themes.dart';


class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({Key? key,this.Controller}) : super(key: key);
  final TextEditingController? Controller;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top:SizeConfig.defaultSize!*2),
      child: TextFormField(
        controller: Controller,
        style: getBoldStyle(color: ColorManager.black),

        decoration: InputDecoration(hintText: "Search on thousands of products",
          hintStyle:Theme.of(context).textTheme.titleMedium,
          prefixIcon: Icon(Icons.search,color: ColorManager.black,size: SizeConfig.defaultSize!*3,),

          fillColor: ColorManager.lightGrey2,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          ),

        ),

      ),
    );

  }
}
