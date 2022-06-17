import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function()? prees;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login= true,
    required this.prees,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login?"Don’t have an account?  ":"Already have an account?  ",
            style: GoogleFonts.nunito(
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
          GestureDetector(
            onTap: prees,
            child: Text(
              login?"Register":"Sign In",
              style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: cPrimary1,
              ),
            ),
          )
        ],
      ),
    );
  }
}