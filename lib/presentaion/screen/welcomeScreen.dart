// ignore: file_names
// import 'package:devloper_app/presentaion/screen/SignUP.dart';
import 'package:devloper_app/presentaion/screen/logIn.dart';
import 'package:flutter/material.dart';
import '../../Animation/Fadeanimation.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Welcomescreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onButtonPressed() async {
    await _animationController.forward();
    await _animationController.reverse();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LogIn(
          onLoginTap: () {
            print("Login tapped");
          },
          onSignUpTap: () {
            print("SignUp tapped");
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 35, 59),
      body: Stack(
        children: [
          for (int i = 0; i < 3; i++)
            Positioned(
              top: -150 + (i * 100),
              child: FadeAnimation(
                1.6 + (i * 0.4),
                Container(
                  width: width,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/one.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeAnimation(
                  1,
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FadeAnimation(
                  1,
                  Text(
                    "Everything you need as a developer, from resources to opportunities, all in one place.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 18,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(height: 250),
                FadeAnimation(
                  1.6,
                  Center(
                    child: GestureDetector(
                      onTap: _onButtonPressed,
                      child: AnimatedBuilder(
                        animation: _scaleAnimation,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: _scaleAnimation.value,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
