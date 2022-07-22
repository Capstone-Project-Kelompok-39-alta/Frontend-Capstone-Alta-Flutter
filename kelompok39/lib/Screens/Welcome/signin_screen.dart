import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kelompok39/Screens/Home/home_screen.dart';
import 'package:kelompok39/Screens/Welcome/reqister_screen.dart';
import 'package:kelompok39/Screens/main_screen.dart';
import 'package:kelompok39/components/already_have_an_account_check.dart';
import 'package:kelompok39/components/rounded_button.dart';
import 'package:kelompok39/constants.dart';

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
                      text: "Welcome\nBack",
                      style: GoogleFonts.roboto(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: cPrimary5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
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
                  margin: EdgeInsets.only(right: 44),
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.nunito(
                        fontSize: 13, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 273,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MainScreen()));
                    },
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            cLight1),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(cPrimary1),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)))),
                    child: Padding(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                AlreadyHaveAnAccountCheck(
                  prees: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReqisterScreen()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
