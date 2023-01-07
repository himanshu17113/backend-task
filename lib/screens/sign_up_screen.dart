import 'package:flutter/material.dart';
import 'package:task/screens/profile_setup_screen.dart';

import '../config/colors.dart';
import '../widget/costumized_button.dart';
import 'log_in_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _valid = TextEditingController();

  // void signupUser() {
  //   authService.signUpUser(
  //     context: context,
  //     email: _email.text,
  //     password: _password.text,
  //     name: _username.text,
  //     valid: _valid.text
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          var totalHeight = constraints.maxHeight;
          var totalWidth = constraints.maxWidth;
          return Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(24, 24, 24, 1),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: totalHeight * 0.31,
                left: totalWidth * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign up',
                    style: textStyle1,
                  ),
                  SizedBox(
                    height: totalHeight * 0.008,
                  ),
                  Text(
                    "Please fill all the details to start creating \ncontent ",
                    style: textStyle2,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: totalHeight * 0.03,
                  ),
                  buildTextField(
                    obscureText: false,
                    controller: _username,
                    icon: const Icon(
                      Icons.person,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                    keyboardType: TextInputType.text,
                    hint: 'User Name',
                    context: context,
                  ),
                  buildTextField(
                    context: context,
                    obscureText: false,
                    controller: _email,
                    icon: const Icon(
                      Icons.email,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                    hint: 'Email *',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  buildTextField(
                    suffix: const Icon(
                      Icons.visibility_off,
                      color: Color.fromRGBO(102, 102, 102, 1),
                      size: 20,
                    ),
                    context: context,
                    obscureText: true,
                    controller: _password,
                    icon: const Icon(
                      Icons.lock,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    hint: 'Create Password',
                  ),
                  buildTextField(
                    context: context,
                    obscureText: true,
                    controller: _valid,
                    icon: const Icon(
                      Icons.lock,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    hint: 'Comfirm Password',
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 9),
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Container(
                              width: totalWidth * 0.038,
                              height: totalHeight * 0.017,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0x66666600),
                              )),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'I Agree to ',
                            style: textStyle5,
                            children: [
                              TextSpan(
                                text: 'Term & Condition ',
                                style: textStyle3,
                              ),
                              TextSpan(
                                text: 'and ',
                                style: textStyle5,
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: textStyle3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Container(
                            width: totalWidth * 0.038,
                            height: totalHeight * 0.017,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0x66666600),
                            ),
                          ),
                        ),
                        Text(
                          'Remember Me ',
                          style: textStyle5,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_password.text == _valid.text) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => ProfileSetUp(
                              email: _email, name: _username,
                              password: _password,
                              // valid: _valid,
                            ),
                          ),
                        );
                      }
                    },
                    child: CustomizedButton(
                      context: context,
                      width: totalWidth * 0.8866,
                      radius: 5.0,
                      text: 'Sign Up',
                      textStyle: textStyle3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 23, left: 96),
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account ? ',
                          style: textStyle8,
                          children: [
                            TextSpan(
                              text: 'Login ',
                              style: textStyle16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

buildTextField({
  required context,
  required obscureText,
  required controller,
  required icon,
  required keyboardType,
  Icon? suffix,
  required hint,
}) {
  return Container(
    margin: const EdgeInsets.only(
      bottom: 2,
    ),
    width: MediaQuery.of(context).size.width * 0.88,
    height: MediaQuery.of(context).size.height * 0.048,
    child: TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      style: textStyle3,
      decoration: InputDecoration(
        hintStyle: textStyle4,
        hintText: hint,
        filled: true,
        fillColor: const Color.fromRGBO(221, 221, 221, 0.1),
        prefixIcon: icon,
        suffixIcon: suffix ?? null,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.62516)),
        ),
      ),
    ),
  );
}
