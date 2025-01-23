// import 'package:flutter/material.dart';
// import 'package:devloper_app/presentaion/screen/LogIN.dart';
// import 'package:devloper_app/presentaion/screen/SignUP.dart';

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({super.key});

//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   bool showLogin = true;

//   void toggleAuth() {
//     setState(() {
//       showLogin = !showLogin;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       duration: const Duration(milliseconds: 800),
//       child: showLogin
//           ? LogIn(
//               key: const ValueKey("login"),
//               onSignUpTap: toggleAuth,
//             )
//           : SignUp(
//               key: const ValueKey("signup"),
//               onLoginTap: toggleAuth,
//             ),
//     );
//   }
// }
