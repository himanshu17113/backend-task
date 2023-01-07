import 'package:flutter/material.dart';
import 'package:task/screens/home_page_screen.dart';

class SuccessfulSubmitpage extends StatelessWidget {
  const SuccessfulSubmitpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Back.png'), fit: BoxFit.fitWidth),
            ),
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 230,
                ),
                const Padding(
                  padding: EdgeInsets.all(28.0),
                  child: Icon(
                    Icons.done,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 0),
                  child: Text(
                    'Submited',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white70.withOpacity(.8),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 50),
                  child: Text(
                    "We have sucessfuly suybmited your profile. \n"
                    "we will get back to you soon. Till then take\n"
                    "                a test\n ",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white60.withOpacity(.5),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        backgroundColor: Colors.white60),
                    child: const Text(
                      "Home",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )),
              ],
            )),
      ),
    );
  }
}
