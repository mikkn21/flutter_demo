import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const MyButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = const Color.fromARGB(255, 255, 151, 186),
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 255, 151, 186),
          Color.fromARGB(200, 255, 151, 186),
          Color.fromARGB(180, 255, 151, 186),
          Color.fromARGB(130, 255, 151, 186),
        ]),
        borderRadius: BorderRadius.circular(29),
      ),
      child: newElevatedButton(),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          // primary: color,
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
