import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Resources/routs_manager.dart';
import 'Resources/theme_manager.dart';
class MyApp extends StatefulWidget {
 // const MyApp({Key? key}) : super(key: key);
  MyApp._internal();
  static final MyApp _instance=MyApp._internal();//singleton or single instance
  factory MyApp()=>_instance;//factory


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.mainRoute,
      debugShowCheckedModeBanner: false,
      theme: getApplecationTheme(

      ),
    );
  }
}
