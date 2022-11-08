import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Features/Home/Domain/Entities/deal_model.dart';
import 'package:task/Features/cart/Domain/order_model.dart';

import '../../../../App/Resources/color_manager.dart';
import '../../../../App/Resources/size_config.dart';
import '../../../cart/presention/viewLogic/cart_view_logic.dart';


class DealItem extends StatelessWidget {
  const DealItem({Key? key,required this.dealModel, required this.isFav}) : super(key: key);
  final DealModel dealModel;
  final Function isFav;

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context).textTheme;
    return Container(
      width: SizeConfig.defaultSize!*25,
      // height: SizeConfig.defaultSize!*4,



      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Container(

                    height: SizeConfig.defaultSize!*9,
                    width:SizeConfig.defaultSize!*12,
                    decoration:  BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius:const  BorderRadius.all(
                            Radius.circular(10) //                 <--- border radius here
                        ),

                        color: dealModel.color
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                          onTap: (){
                            isFav();
                          },

                          child: Icon(Icons.favorite,color:(dealModel.isFavorite==false)?ColorManager.white:Colors.red,)),
                    ),

                  ),


                ],
              ),
            ),
            SizedBox(width: SizeConfig.defaultSize!*2,),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('${dealModel.name}',style:Theme.of(context).textTheme.headlineLarge ,),
                Text(' pieces ${dealModel.numberOfPieces}',style: theme.headlineMedium,),
                  Text.rich(TextSpan(
                   // text: 'This item costs ',
                    children: <TextSpan>[
                       TextSpan(
                          text: ' \$${dealModel.price}   ',style: TextStyle(color: Colors.red)
                      ),
                       TextSpan(
                        text: '\$${dealModel.oldPrice}',
                        style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),

                    ],
                  ),
                  ),
              GetBuilder<CartViewLogic>(
                  init: CartViewLogic(),
                  builder: (cartVL) => Container(
                      decoration:  BoxDecoration(
                          border: Border.all(color: ColorManager.customContainer),
                          borderRadius:const  BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),

                          color: ColorManager.favRed
                      ),
                      //  color: Colors.black,
                        child: GestureDetector(
                            onTap: (){
                              cartVL.addToCart(OrderModel(id: dealModel.id,name: dealModel.name, price: int.parse(dealModel.price), quantity: 1));
                              Get.snackbar("Successfully added ", "Successfully added to cart");
                            },


                            child: Icon(Icons.add_shopping_cart,size: 20,color: ColorManager.white,))),
                  ),

              ],),
            )
          ],
        ),
      ),
    );
  }
}
