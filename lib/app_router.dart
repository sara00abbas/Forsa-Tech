// ignore: unused_import
import 'package:devloper_app/business_logic/cubit/auth_cubit.dart';
import 'package:devloper_app/constants/String.dart';
import 'package:devloper_app/data/repository/auth.dart';
import 'package:devloper_app/data/webService/auth.dart';
import 'package:devloper_app/presentaion/screen/Home.dart';
import 'package:devloper_app/presentaion/screen/LogIN.dart';
import 'package:devloper_app/presentaion/screen/SignUP.dart';
import 'package:devloper_app/presentaion/screen/sidebar_menu.dart';
import "package:flutter/material.dart";
import 'package:devloper_app/presentaion/screen/WelcomeScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:devloper_app/constants/String.dart';

class AppRouter {
  late AuthRepository authRepository;
  late AuthCubit authCubit;
  AppRouter() {
    authRepository = AuthRepository(authWebServices: AuthWebServices());
    authCubit = AuthCubit(authRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => authCubit,
            child: const Welcomescreen(),
          ),
        ); // the first screen in your app if you have second screen

      // case '/homepage' the scond page
      // return
      // case loginscreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => authCubit,
      //       child: LogIn(
      //         onSignUpTap: () {},
      //         onLoginTap: () {},
      //       ),
      //     ),
      //   );
      case signupscreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => authCubit,
            child: SignUp(
              onLoginTap: () {},
            ),
          ),
        );

      default:
        return null;
    }
  }
}
