import 'package:flutter/material.dart';
import 'package:task/App/Resources/text_themes.dart';
import 'package:task/App/Resources/values_manger.dart';

import 'color_manager.dart';
import 'font_manger.dart';
ThemeData getApplecationTheme(){
  return ThemeData(

    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.grey,
    disabledColor: ColorManager.lightGrey,
   //cardView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,

  ),
    // app bar theme
    appBarTheme: AppBarTheme(
      elevation: AppSize.s4,
      color: ColorManager.primary,
      shadowColor: ColorManager.lightPrimary,
      centerTitle: true,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16
      )
    ),

      // button theme
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primary,
      disabledColor: ColorManager.lightGrey,
      splashColor: ColorManager.lightPrimary,
      shape:const  StadiumBorder(),
  ),
    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s17),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(AppSize.s12)
        )
      )
    ),
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(color: ColorManager.black,fontSize: FontSize.s16),
      headlineLarge: getSemiBoldStyle(color: ColorManager.black,fontSize: FontSize.s14),
      headlineMedium: getRegularStyle(color: ColorManager.black,fontSize: FontSize.s14),
      titleMedium: getMediumStyle(color: ColorManager.black,fontSize: FontSize.s16),
      bodyLarge: getRegularStyle(color: ColorManager.grey),
      bodySmall: getRegularStyle(color: ColorManager.grey)
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding:const  EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey,fontSize: FontSize.s20),
      labelStyle: getMediumStyle(color: ColorManager.grey,fontSize: FontSize.s20),
      errorStyle: getRegularStyle(color: ColorManager.error,),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius:const  BorderRadius.all(Radius.circular(AppSize.s8))
      ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
            borderRadius:const  BorderRadius.all(Radius.circular(AppSize.s8))
        ),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
          borderRadius:const  BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      focusedErrorBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
          borderRadius:const  BorderRadius.all(Radius.circular(AppSize.s8))
      )
    ),
    
    



  );
}