import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Features/Home/presention/viewLogic/home_vl.dart';

import 'address_item.dart';

class AddressContent extends StatelessWidget {
  const AddressContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewLogic>(
      init: HomeViewLogic(),
      builder: (controller) => Expanded(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

            childAspectRatio: (1 / .6),
            //crossAxisSpacing: 10.0,
            //  mainAxisSpacing: 10
          ),
          itemBuilder: (_, index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: AddressesItem(addressModel: controller.address[index]),
          ),
          itemCount: controller.address.length,
        ),
      ),
    );
  }
}
