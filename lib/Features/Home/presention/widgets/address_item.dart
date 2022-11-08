import 'package:flutter/material.dart';
import 'package:task/Features/Home/Domain/Entities/Address_model.dart';

import '../../../../App/Resources/color_manager.dart';
import '../../../../App/Resources/size_config.dart';


class AddressesItem extends StatelessWidget {
  const AddressesItem({Key? key, required this.addressModel}) : super(key: key);
  final AddressModel addressModel;

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context).textTheme;
    return Container(
      width: SizeConfig.defaultSize!*20,
     // height: SizeConfig.defaultSize!*4,


      decoration:  BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius:const  BorderRadius.all(
            Radius.circular(10) //                 <--- border radius here
        ),
        color: ColorManager.white

      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Container(

                    height: SizeConfig.defaultSize!*5,
                    width:SizeConfig.defaultSize!*5,
                    decoration:  BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                      borderRadius:const  BorderRadius.all(
                          Radius.circular(5.0) //                 <--- border radius here
                      ),

color: ColorManager.lightGrey
                    ),
                  )

                ],
              ),
            ),
            SizedBox(width: SizeConfig.defaultSize!,),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('${addressModel.addressTitle}',style:Theme.of(context).textTheme.headlineLarge ,),
                Text('${addressModel.streetDetails}',style: theme.headlineMedium,),
                Text('${addressModel.street}',style: theme.headlineMedium,),

              ],),
            )
          ],
        ),
      ),
    );
  }
}
