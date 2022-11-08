import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/App/Resources/size_config.dart';
import 'package:task/Features/Home/presention/viewLogic/home_vl.dart';
import 'package:task/Features/Home/presention/widgets/Address_content.dart';
import 'package:task/Features/Home/presention/widgets/Deals_content.dart';
import 'package:task/Features/cart/presention/widgets/cart_item_builder.dart';
import 'package:task/Features/Home/presention/widgets/category_item.dart';
import 'package:task/Features/Home/presention/widgets/ccustom_search_widget.dart';
import 'package:task/Features/cart/presention/widgets/custom_container.dart';

import '../../../cart/presention/screens/cart_screen.dart';
import '../widgets/header.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final   TextEditingController searchController=TextEditingController();

  final HomeViewLogic homeViewLogic = Get.put(HomeViewLogic());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(

       // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: 'Mustafa St..',),
          Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize!*3,horizontal: SizeConfig.defaultSize!*1.5),
            child: CustomSearchWidget(Controller:searchController ),
          ),
         const AddressContent(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Explore by category",style: Theme.of(context).textTheme.headlineLarge,),
            Text("see All(38)",style:Theme.of(context).textTheme.bodyText1),

          ],
        ),
      Expanded(
        child: ListView.builder(itemBuilder: (BuildContext context, int index){
         return   CategoryItem(categoryModel: homeViewLogic.categories[index],);


        },
          itemCount: homeViewLogic.categories.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,

        ),
      ),
     Text("Deals of the day",style: Theme.of(context).textTheme.headlineLarge,),
     const     DealsContent(),

FloatingActionButton(
  child: Icon(Icons.shopping_cart),
    onPressed: (){
Get.to(CartScreen());
})



        ],
      ),
    );
  }
}
