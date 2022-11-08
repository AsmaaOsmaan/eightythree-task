import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Domain/order_model.dart';

class CartViewLogic extends GetxController {
  List<OrderModel> orders = [];

  int totalPrice = 0;

  addToCart(OrderModel orderModel) {
    bool found = orders.contains(orderModel);

    if (found == false) {
      orders.add(orderModel);
    }
    calcTotalPrice();

    update();
  }

  increaseItem(OrderModel orderModel) {
    orders[orders.indexWhere((element) => element.id == orderModel.id)]
            .quantity =
        orders[orders.indexWhere((element) => element.id == orderModel.id)]
                .quantity +
            1;
    calcTotalPrice();

    update();
  }

  decreaseQuantity(OrderModel orderModel) {
    int val =
        orders[orders.indexWhere((element) => element.id == orderModel.id)]
            .quantity;

    if (val != 0) {
      orders[orders.indexWhere((element) => element.id == orderModel.id)]
          .quantity = val - 1;
      calcTotalPrice();
    }

    update();
  }

  calcTotalPrice() {
    totalPrice=0;
    for (var element in orders) {
      totalPrice += (element.quantity * element.price);
    }
    update();
  }
}
