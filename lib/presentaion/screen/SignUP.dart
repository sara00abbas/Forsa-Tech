import 'package:devloper_app/presentaion/screen/widget/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 60, 39, 96),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Customer1(
                  mainText: "Create an account ✨",
                  subText: "Welcome please enter your details"),
              TextFormField1(
                  hintText: "Enter your name",
                  prefixIcon:const Icon(Icons.person),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "the field is empty";
                    }
                    if (value.length > 20) {
                      return "The value must not be greater than ten ";
                    }
                    return null;
                  },
                  textStyle:const TextStyle(color: Colors.white),
                  onChanged: (value) {
                    print("$value");
                  },
                  fillColor:const Color(0xff5C4B7D)),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.email, color: Colors.grey),
                  filled: true,
                  fillColor:const Color(0xff5C4B7D),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "the field is empty";
                  }
                  if (value.length > 20) {
                    return "The value must not be greater than ten ";
                  }
                  return null;
                },
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '*********',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xff5C4B7D),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "the field is empty";
                  }
                  if (value.length > 20) {
                    return "The value must not be greater than ten ";
                  }
                  return null;
                },
                style: const TextStyle(color: Color(0xff)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(Icons.check_box,
                      color: Color.fromARGB(255, 226, 209, 215), size: 16),
                  SizedBox(width: 8),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Must be at least 8 characters',
                    style: TextStyle(color: Color(0xffB9BCC2)),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("vaild");
                      } else {
                        print("not valid");
                      }
                    },
                    child: const Text("Sign Up"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Color(0xff9B87D7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "or Sign up with",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                      label: const Text('Sign up with Google',
                          style: TextStyle(color: Colors.white)),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook, color: Colors.blue),
                      label: const Text('Sign up with Facebook',
                          style: TextStyle(color: Colors.white)),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Alreay have an account ?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const Text("Log in "),
                    textColor: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
