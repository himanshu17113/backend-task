import 'package:flutter/material.dart';


class CustomizedButton extends StatelessWidget {
  final BuildContext context;
  final double  width;
  final double radius;
  final String text;
  final TextStyle textStyle;

   const CustomizedButton({
    Key? key,
    required this.context,
    required this.width,
    required this.radius,
    required this.text,
    required this.textStyle,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 48.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.0, 0.0),
          end: Alignment(1, 0.027),
          colors: [
            Color.fromRGBO(54, 159, 255, 1),
            Color.fromRGBO(0, 41, 255, 1)
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
