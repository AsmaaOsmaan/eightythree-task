import 'package:flutter/material.dart';
import 'package:task/App/Resources/color_manager.dart';
import 'package:task/Features/cart/presention/widgets/custom_container.dart';
import 'package:task/Features/cart/Domain/order_model.dart';

import 'custom_icon.dart';

class CartItemBuilder extends StatelessWidget {
   CartItemBuilder(
      {Key? key,
      required this.orderModel,
      required this.increaseQuantity,
      required this.decreaseQuantity})
      : super(key: key);
  final OrderModel orderModel;
  final Function increaseQuantity;
  final Function decreaseQuantity;
  String symbol = "\$";


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(

            children: [
              const Padding(
                padding: const EdgeInsets.only(right: 15),
                child: const CustomContainer(),
              ),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(orderModel.name),
                  Text("${symbol} ${orderModel.price}",style: TextStyle(color: ColorManager.favRed),),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              children: [


                CustomIcon(
                  onTap: () {
                    increaseQuantity();
                  },
                  icon: Icons.add,
                ),

                const SizedBox(width: 15),

                Text(
                  orderModel.quantity.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 15),
                CustomIcon(
                  onTap: () {
                    decreaseQuantity();
                  },
                  icon: Icons.remove,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
