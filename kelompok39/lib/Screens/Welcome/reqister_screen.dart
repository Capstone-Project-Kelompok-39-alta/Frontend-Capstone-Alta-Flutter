import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/Screens/Welcome/phone_register_screen.dart';

import 'package:kelompok39/Screens/Welcome/signin_screen.dart';
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
                            Color.fromRGBO(255, 255, 255, 1)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kPrimaryColor1),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29)))),
                    child: Padding(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        "Register",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17.5,
                ),
                OrDivider(),
                SizedBox(
                  height: 13.5,
                ),
                // RoundedButton(
                //   text: "Sing in",
                //   press: () {
                //     Navigator.of(context).push(
                //         MaterialPageRoute(
                //             builder: (context) => SignInScreen()));
                //   },
                //   color: Color.fromRGBO(255, 255, 255, 1),
                //   textColor: Color.fromRGBO(19, 83, 45, 1),
                // ),
                SizedBox(
                  width: 273,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignInScreen()));
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(kPrimaryColor1),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 255, 255, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29)))),
                    child: Padding(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        "Sing in",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
