import 'package:flutter/material.dart';
import 'package:task/Features/Home/Domain/Entities/category_model.dart';

import '../../../../App/Resources/color_manager.dart';
import '../../../../App/Resources/size_config.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.categoryModel}) : super(key: key);
final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        children: [
          Container(

            height: SizeConfig.defaultSize!*6,
            width:SizeConfig.defaultSize!*6,
            decoration:  BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius:const  BorderRadius.all(
                    Radius.circular(5.0) //                 <--- border radius here
                ),

                color: categoryModel.color
            ),
          ),
          Text("${categoryModel.name}")
        ],
      ),
    );
  }
}
