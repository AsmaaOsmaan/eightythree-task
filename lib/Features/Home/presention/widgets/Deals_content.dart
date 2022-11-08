import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewLogic/home_vl.dart';
import 'address_item.dart';
import 'deal_item.dart';


class DealsContent extends StatelessWidget {
  const DealsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    GetBuilder<HomeViewLogic>(
      init: HomeViewLogic(),
      builder: (controller) => Expanded(
        child: ListView.builder(
          itemBuilder: (_, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: DealItem(dealModel:controller.deals[index] ,isFav: (){
              controller.addTOFavorite(controller.deals[index]) ;
            }),
          ),
          itemCount: controller.deals.length,

scrollDirection: Axis.horizontal,
          //  gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,

         //   childAspectRatio: (1 / .6),
            //crossAxisSpacing: 10.0,
            //  mainAxisSpacing: 10


          ),

        ),
      );
 //   );
  }
}
