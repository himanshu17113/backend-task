import 'package:flutter/material.dart';
import 'package:task/config/colors.dart';
import 'package:task/screens/submit_page.dart';

import '../widget/costumized_button.dart';

class SubmitTestPage extends StatelessWidget {
  const SubmitTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Back.png'), fit: BoxFit.fitWidth),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 300,
                child: Card(
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Test',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black.withOpacity(.8),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Create a brand identity copy for a \n"
                            "fashion brand. Targe audience are\n"
                            "18 - 32 yrs and location is based in \n"
                            "              bangalore \n ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) =>  Submitpage()
                              ),
                             );
                          },
                          child: CustomizedButton(
                            context: context,
                            text: 'TAKE A TEST',
                            textStyle: textStyle6,
                            radius: 8.0,
                            width: 230.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ]),
                ),
              ),
            ],
          )),
    );
  }
}
