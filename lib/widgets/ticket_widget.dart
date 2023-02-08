import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool isObscure = true;

  bool _value = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    void _registration() {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (email.isEmpty) {
        showCustomSnackBar('Type in your Email, phone number, or Username',
            title: email);
      } else if (password.isEmpty) {
        showCustomSnackBar('Type in your Password', title: 'Password');
      } else if (password.length < 4) {
        showCustomSnackBar('Password cannot be less than Four charracters!',
            title: 'Password');
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar('Type in a valid email address', title: 'Email');
      } else {
        showCustomSnackBar('Correct', title: 'Login');
      }
    }

    return Scaffold(
      // backgroundColor: Colors.grey,
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue.shade500,
                        )),
                      ),
                      Container(
                          padding:
                              const EdgeInsets.only(left: 9, right: 10, top: 5),
                          child: Text(
                            "Log in",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.blue.shade500,
                                fontWeight: FontWeight.w500),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 40 * 2,
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/img008.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Email, Phone or Username",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 52,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      // validator: (value) {
                      //   if (value == null ||
                      //       value.isEmpty ||
                      //       !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      //           .hasMatch(value)) {
                      //     return 'Please enter a valid email';
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 52,
                    child: TextFormField(
                      obscureText: isObscure,
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                //
                              },
                              icon: isObscure
                                  ? const Icon(
                                      Icons.remove_red_eye_rounded,
                                      color: Colors.grey,
                                    )
                                  : const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.grey,
                                    )),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Password is required";
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  const Text(
                    "Email, Phone or Username",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 52,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      // validator: (value) {
                      //   if (value == null ||
                      //       value.isEmpty ||
                      //       !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      //           .hasMatch(value)) {
                      //     return 'Please enter a valid email';
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 52,
                    child: TextFormField(
                      obscureText: isObscure,
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                //
                              },
                              icon: isObscure
                                  ? const Icon(
                                      Icons.remove_red_eye_rounded,
                                      color: Colors.grey,
                                    )
                                  : const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.grey,
                                    )),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return "Password is required";
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Forgot password ',
                        style: TextStyle(color: Colors.grey)),
                    TextSpan(
                        text: 'Reset password',
                        style: TextStyle(color: Colors.blue))
                  ])),
                  Container(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: (() {
                      _registration();
                    }),
                    child: Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade500,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Center(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Don\'t have an Account? ',
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: 'Sign Up', style: TextStyle(color: Colors.blue))
                    ])),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showCustomSnackBar(String message,
    {bool isError = true, String title = 'Error'}) {
  Get.snackbar(title, message,
      titleText: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      messageText: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.blue.shade600);
}
