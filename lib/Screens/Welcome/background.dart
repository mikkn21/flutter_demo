import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -40,
              left: -100,
              child: Image.asset(
                "assets/images/donut.png",
                width: size.width * 0.5,
              ),
            ),
            Positioned(
              bottom: -100,
              right: -100,
              child: Image.asset(
                "assets/images/donut.png",
                width: size.width * 0.7,
              ),
            ),
            child,
          ],
        ));
  }
}
