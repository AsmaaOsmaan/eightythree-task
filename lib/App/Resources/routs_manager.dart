
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Features/cart/presention/screens/cart_screen.dart';
import '../../Features/Home/presention/screens/home.dart';



class Routes{

  static const String mainRoute='/HomePage';
  static const String cartScreen='/CartScreen';
}
class RouteGenerator{
  static Route<dynamic>getRoute(RouteSettings settings){
switch (settings.name){
  case Routes.mainRoute:
    return MaterialPageRoute(builder: (_)=> const HomePage());
  case Routes.cartScreen:
    return MaterialPageRoute(builder: (_)=> const CartScreen());

    default:
      return UnDefinedRoute();
}
  }
  static Route<dynamic>UnDefinedRoute(){
    return MaterialPageRoute(builder: (_)=> Scaffold(

      appBar: AppBar(
        title:const Text("noRouteFound"),
      ),
      body:const  Center(child: Text("noRouteFound")) ,
    ));

  }

}