import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/Screens/Welcome/otp_screen.dart';
import 'package:kelompok39/components/rounded_phone_field.dart';

import 'package:kelompok39/components/text_field_container.dart';
import 'package:kelompok39/constants.dart';

class PhoneRegisterScreen extends StatelessWidget {
  const PhoneRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 1.5,
                  image: AssetImage("assets/img/2.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter your phone number\n",
                        style: GoogleFonts.nunito(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            "We’ll send you a verification code so we\n know you’re real",
                        style: GoogleFonts.nunito(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RoundedPhoneField(
                  hinttext: "Enter you'r number",
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 273,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kPrimaryColor1),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29)))),
                    child: Padding(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        "Send Message",
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
          ),
        ],
      ),
    );
  }
}
