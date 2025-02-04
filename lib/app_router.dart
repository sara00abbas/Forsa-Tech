// ignore: unused_import
import 'package:devloper_app/presentaion/screen/Home.dart';
import 'package:devloper_app/presentaion/screen/LogIN.dart';
import 'package:devloper_app/presentaion/screen/sidebar_menu.dart';
import "package:flutter/material.dart";
// import "package:devloper_app/presentaion/screen/sign_in.dart";
import 'package:devloper_app/presentaion/screen/WelcomeScreen.dart';

class AppRouter {

  Route? generateRoute (RouteSettings setting) {
    switch (setting.name) {
      case '/':
      return MaterialPageRoute(builder: (_) => const SidebarMenu() ) ; // the first screen in your app if you have second screen 

      // case '/homepage' the scond page 
      // return 

    }
    return null; //

  

  }


}