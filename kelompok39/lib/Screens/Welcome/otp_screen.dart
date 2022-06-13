import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/constants.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Verification Code\n",
                      style: GoogleFonts.nunito(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text:
                          "We have to sent the code\nverification to your mobile number",
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 92,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _textFieldOTP(first: true, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: true),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Code is valid for 00:35"),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 273,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OtpScreen()));
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(cPrimary1),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(29)))),
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Text(
                          "Submit",
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
              SizedBox(
                height: 18,
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
                          MaterialStateProperty.all<Color>(cPrimary1),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(29)))),
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Text(
                      "Resend Code",
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
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 80,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: cPrimary1),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
