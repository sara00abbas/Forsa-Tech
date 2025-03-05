import 'package:animate_do/animate_do.dart';
import 'package:devloper_app/presentaion/screen/widget/custom_botton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget/custom_field.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:devloper_app/presentaion/screen/SignUP.dart';

class LogIn extends StatefulWidget {
  const LogIn({
    Key? key,
  }) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f9fD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(),
                FadeInDown(
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 16),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 209, 158, 207),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              "Welcome Back",
                              style: TextStyle(
                                  color: Color(0xff4A154B),
                                  fontWeight: FontWeight.w600),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Log in to your\naccount",
                          style: TextStyle(
                              color: Color(0xff1D1C1D),
                              fontSize: 36,
                              height: 1.2,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        FadeInDown(
                            duration: const Duration(milliseconds: 650),
                            delay: const Duration(milliseconds: 200),
                            child: Column(
                              children: [
                                Container(
                                  child: CustomField(
                                    controller: emailController,
                                    icon: CupertinoIcons.mail,
                                    gradientColors: const [
                                      Color(0xFF4A154B),
                                      Color(0xFF6B1A6B)
                                    ],
                                    hint: "Email",
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter an email';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(height: 16),
                                CustomField(
                                  controller: passwordController,
                                  icon: CupertinoIcons.lock,
                                  gradientColors: const [
                                    Color(0xFF4A154B),
                                    Color(0xFF6B1A6B)
                                  ],
                                  hint: "Password",
                                  isPassword: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a password';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 60,
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                              value: true,
                                              onChanged: (value) {}),
                                          const Text(
                                            "Remember Me",
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("Forget Password?"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )),
                FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 400),
                    child: CustomButton(onPressed: () {}, text: "Log in ")),
                const SizedBox(
                  height: 24,
                ),
                FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't hava an account ?",
                          style:
                              TextStyle(color: Color.fromARGB(255, 61, 26, 61)),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => SignUp(
                          //         onLoginTap: () {
                          //           Navigator.pop(context);
                          //         },
                          //       ),
                          //     ),
                          //   );
                          // },
                          child: const Text(
                            " Sign Up",
                            style: TextStyle(
                                color: Color(
                                  0xFF4A154B,
                                ),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 40,
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 600),
                  duration: const Duration(milliseconds: 800),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.transparent,
                                  Color(0xffe0e0e0),
                                ]),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'or continue with',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF4A154B), // نفس لون الخط
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.transparent,
                                  Color(0xffe0e0e0),
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElasticIn(
                            delay: const Duration(milliseconds: 800),
                            duration: const Duration(milliseconds: 1000),
                            child: _buildSocialButton(
                                icon: EvaIcons.github,
                                label: "GitHub",
                                gradientColors: [
                                  Color.fromARGB(15, 163, 127, 127),
                                  Color.fromARGB(255, 51, 49, 49)
                                ]),
                          ),
                          const SizedBox(width: 60),
                          ElasticIn(
                            delay: const Duration(milliseconds: 800),
                            duration: const Duration(milliseconds: 1000),
                            child: _buildSocialButton(
                                icon: EvaIcons.linkedin,
                                label: "Linked IN",
                                gradientColors: [
                                  Colors.blue,
                                  Colors.blueAccent,
                                ]),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required String label,
    required List<Color> gradientColors,
  }) {
    return Container(
      height: 55,
      width: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            gradientColors[0].withOpacity(0.1),
            gradientColors[1].withOpacity(0.1),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: gradientColors[1],
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: gradientColors[1],
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
