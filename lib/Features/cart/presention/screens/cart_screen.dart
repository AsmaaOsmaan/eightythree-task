
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:task/Features/cart/presention/widgets/cart_item_builder.dart';

import '../../../Home/presention/widgets/header.dart';
import '../viewLogic/cart_view_logic.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:GetBuilder<CartViewLogic>(
        init: CartViewLogic(),
        builder: (cartVL) => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(title: "Oxford street"),
              ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CartItemBuilder(orderModel:cartVL.orders[index] ,increaseQuantity: (){
                      cartVL.increaseItem(cartVL.orders[index]);
                    }, decreaseQuantity: (){
                      cartVL.decreaseQuantity(cartVL.orders[index]);
                    },);
                  },
                  itemCount:cartVL.orders.length ,
                ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Total Price :${cartVL.totalPrice}",style: Theme.of(context).textTheme.displayLarge,)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
