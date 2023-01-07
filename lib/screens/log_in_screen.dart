import 'package:flutter/material.dart';
import 'package:task/config/sizes_helper.dart';
import 'package:task/screens/sign_up_screen.dart';
import 'package:task/screens/take_test_screen.dart';

import '../config/colors.dart';
import '../widget/costumized_button.dart';
import 'profile_setup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInState();
}

class _LogInState extends State<LogInScreen> {
  final TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            var totalHeight = constraints.maxHeight;

            return Stack(
              children: [
                buildContainer(),
                buildLayoutBuilder(),
                buildPositioned(totalHeight, height),
              ],
            );
          },
        ),
      ),
    );
  }

  Positioned buildPositioned(double totalHeight, double height) {
    return Positioned(
      top: totalHeight * 0.45,
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: height,
          width: displayWidth(context),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(53, 52, 52, 1),
                Color.fromRGBO(10, 10, 10, 1),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 33,
                  ),
                  child: Text(
                    'Welcome',
                    style: textStyle1,
                  ),
                ),
                SizedBox(
                  width: 168,
                  height: 36,
                  child: Text(
                    'Let’s get a best content \n writers for you.',
                    textAlign: TextAlign.center,
                    style: textStyle2,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 9, left: 22),
                  width: 305.01,
                  height: 41,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(221, 221, 221, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(8.62516)),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: _number,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          '+91 ',
                          style: textStyle3,
                        ),
                      ),
                      hintText: 'XXX XXX XXXX',
                      hintStyle: textStyle4,
                      filled: true,
                      fillColor: const Color.fromRGBO(221, 221, 221, 0.1),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius:
                            BorderRadius.all(Radius.circular(8.62516)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 9, left: 30),
                  child: Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Container(
                          width: 15.53,
                          height: 15.53,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0x66666600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6.04,
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
                            TextSpan(text: 'Privacy Policy', style: textStyle3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 30),
                  child: Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Container(
                          width: 15.53,
                          height: 15.53,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0x66666600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6.04,
                      ),
                      Text(
                        'Remember Me ',
                        style: textStyle5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const testScreen(),
                      ),
                    );
                  },
                  child: CustomizedButton(
                    context: context,
                    text: 'LOGIN',
                    textStyle: textStyle6,
                    radius: 8.0,
                    width: 300.0,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  child: Text(
                    'I don’t have an account? Create Account',
                    style: textStyle7,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  LayoutBuilder buildLayoutBuilder() {
    return LayoutBuilder(
      builder: (ctx, constrains) {
        var conHeight = constrains.maxHeight;
        var conWidth = constrains.maxWidth;
        return SizedBox(
          child: Stack(
            children: [
              Positioned(
                left: conWidth * 0.36,
                top: conHeight * 0.16,
                child: Container(
                  height: conHeight * 0.15,
                  width: conWidth * 0.40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/login/img_3.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                left: conWidth * 0.07,
                top: conHeight * 0.13,
                child: Container(
                  height: conHeight * 0.15,
                  width: conWidth * 0.40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/login/img_2.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                left: conWidth * 0.08,
                top: conHeight * 0.10,
                child: Container(
                  height: conHeight * 0.31,
                  width: conWidth * 0.64,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/login/img_1.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                top: conHeight * 0.30,
                left: conWidth * 0.13,
                child: Container(
                  height: conHeight * 0.07,
                  width: conWidth * 0.11,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/login/img.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Container buildContainer() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/background.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
