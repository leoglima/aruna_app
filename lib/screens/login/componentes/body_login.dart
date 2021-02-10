import 'package:aruna_app/components/already_have_an_account_acheck.dart';
import 'package:aruna_app/components/rounded_buttom.dart';
import 'package:aruna_app/components/rounded_input_field.dart';
import 'package:aruna_app/components/rounded_password_field.dart';
import 'package:aruna_app/screens/login/componentes/background.dart';

import 'package:aruna_app/screens/singup/singup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: "Josefin Sans"),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Seu email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButtom(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SingUpscreen();
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
