import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/Screens/Home/home_screen.dart';
import 'package:kelompok39/Screens/Profile/profile_screen.dart';
import 'package:kelompok39/Screens/Welcome/reqister_screen.dart';
import 'package:kelompok39/Screens/Welcome/signin_screen.dart';
import 'package:kelompok39/Screens/main_screen.dart';
import 'package:kelompok39/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
              height: 138,
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 1.5,
                  image: AssetImage("assets/img/1.png"),
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
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Remind you to pay the invoices\n",
                      style: GoogleFonts.nunito(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text:
                          "We help you to remember to pay your\n invoices in the midst of your busy life",
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    )
                  ])),
              FittedBox(
                child: Container(
                  margin: EdgeInsets.only(bottom: 25),
                  padding: EdgeInsets.only(
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(69, 90, 100, 1),),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReqisterScreen()));
                            },
                            child: Container(
                              width: 112,
                              height: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: cPrimary1),
                              alignment: Alignment.center,
                              child: Text(
                                "Register",
                                style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: cLight1,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()));
                            },
                            child: Container(
                              width: 112,
                              height: 46,
                              color: Color.fromRGBO(69, 90, 100, 1),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign In",
                                style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: cLight1,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
