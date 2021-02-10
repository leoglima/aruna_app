import 'package:aruna_app/components/already_have_an_account_acheck.dart';
import 'package:aruna_app/components/rounded_buttom.dart';
import 'package:aruna_app/components/rounded_input_field.dart';
import 'package:aruna_app/components/rounded_password_field.dart';
import 'package:aruna_app/screens/login/login_screen.dart';
import 'package:aruna_app/screens/singup/componentes/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodySingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Seu email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButtom(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
