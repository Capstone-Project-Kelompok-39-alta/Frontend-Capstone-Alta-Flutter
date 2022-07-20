import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/Screens/Welcome/phone_register_screen.dart';

import 'package:kelompok39/Screens/Welcome/signin_screen.dart';
import 'package:kelompok39/components/already_have_an_account_check.dart';
import 'package:kelompok39/components/rounded_button.dart';
import 'package:kelompok39/components/rounded_input_field.dart';
import 'package:kelompok39/components/rounded_name_field.dart';
import 'package:kelompok39/components/rounded_password_field.dart';
import 'package:kelompok39/components/text_field_container.dart';
import 'package:kelompok39/constants.dart';

class ReqisterScreen extends StatelessWidget {
  const ReqisterScreen({Key? key}) : super(key: key);

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
                      text: "Create\nAccount",
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
          SizedBox(
            height: 48,
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                RoundedNameField(
                  hinttext: "enter your name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "enter your email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 55,
                ),
                // RoundedButton(
                //   text: "Create acount",
                //   press: () {},
                // ),
                SizedBox(
                  width: 273,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PhoneRegisterScreen()));
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
                        "Register",
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
                    login: false,
                    prees: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
