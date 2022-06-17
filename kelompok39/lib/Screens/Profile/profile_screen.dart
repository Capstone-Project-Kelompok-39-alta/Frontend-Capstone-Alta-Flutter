import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok39/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 32,
                        color: Color.fromRGBO(43, 43, 43, 1),
                      ),
                    ),
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.roboto(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Icon(Icons.notifications_none_sharp),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('assets/img/Mark PP.png'),
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mark Sanchez",
                          style: GoogleFonts.nunito(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)), //nama
                      Text("Martk.Sanchez@gmail.com",
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)) //nama
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.settings_outlined, size: 20),
                          Text("Personal Setting"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.lock_outlined,
                            size: 20,
                          ),
                          Text("Change Password"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.question_answer_outlined,
                            size: 20,
                          ),
                          Text("Frequently Asked Questions"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.headset_mic_outlined, size: 20),
                          Text("Call Center"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.assignment_outlined,
                            size: 20,
                          ),
                          Text("Terms and Conditions"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.privacy_tip_outlined,
                            size: 20,
                          ),
                          Text("Privacy Policy"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 273,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              content:
                                  const Text("Are you sure want to Sign Out?"),
                              actions: [
                                Center(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 123,
                                        height: 40,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(29),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: const Text("Cencel"),
                                            style: TextButton.styleFrom(
                                                backgroundColor: cPrimary1,
                                                primary: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 123,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: (cPrimary1),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Sing Out",
                                            style: GoogleFonts.nunito(
                                                color: cPrimary4,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ));
                  },
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(cPrimary1),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(29)))),
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sing Out",
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.exit_to_app_outlined),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
