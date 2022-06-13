import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/Screens/Profile/profile_screen.dart';
import 'package:kelompok39/Screens/Welcome/reqister_screen.dart';
import 'package:kelompok39/Screens/Welcome/signin_screen.dart';

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
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey),
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
                              height: 46,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(29),
                                  color: Colors.green),
                              alignment: Alignment.center,
                              child: Text("Register"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()));
                            },
                            child: Container(
                              width: 112,
                              height: 46,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("Sign In"),
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
