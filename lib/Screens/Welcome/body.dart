import 'package:flutter/material.dart';
import '../../my_button.dart';
import '../Login/login.dart';
import '../SignUp/sign_up.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome friend!",
              style: TextStyle(
                height: 0,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              'assets/images/guy.png',
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.1),
            MyButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => LoginScreen())),
                  );
                }),
            MyButton(
                text: "SIGN UP",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => SignUpScreen())),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
