import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/Screens/Welcome/reqister_screen.dart';
import 'package:kelompok39/components/rounded_button.dart';

import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/Untitled_design.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: RichText(
                    text: TextSpan(
                      text: "Welcome\n Back",
                      style: GoogleFonts.roboto(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                RoundedInputField(
                  hintText: "enter your email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                Container(
                  alignment: AlignmentDirectional.topEnd,
                  margin: EdgeInsets.only(right: 31),
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.nunito(
                        fontSize: 13, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.right,
                  ),
                ),
                RoundedButton(
                  text: "Sign In",
                  press: () {},
                ),
                SizedBox(
                  height: 17.5,
                ),
                OrDivider(),
                SizedBox(
                  height: 13.5,
                ),
                RoundedButton(
                  text: "Register",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReqisterScreen()));
                  },
                  color: Color.fromRGBO(255, 255, 255, 1),
                  textColor: Color.fromRGBO(19, 83, 45, 1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(children: <Widget>[
        buildDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "OR",
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        buildDivider(),
      ]),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        height: 3,
      ),
    );
  }
}
